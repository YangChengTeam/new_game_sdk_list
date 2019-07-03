.class public Lcom/ss/android/common/applog/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/common/applog/aa$a;,
        Lcom/ss/android/common/applog/aa$b;
    }
.end annotation


# static fields
.field public static a:Lcom/ss/android/common/applog/aa$b;

.field public static b:Lcom/ss/android/common/applog/aa$a;

.field private static volatile c:Z

.field private static volatile d:Z

.field private static volatile e:I

.field private static f:Ljava/lang/Object;

.field private static g:Lcom/ss/android/common/applog/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/aa;->f:Ljava/lang/Object;

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 283
    sget-boolean v0, Lcom/ss/android/common/applog/aa;->c:Z

    if-eqz v0, :cond_0

    .line 298
    :goto_0
    return-void

    .line 285
    :cond_0
    sget-object v1, Lcom/ss/android/common/applog/aa;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_0
    const-string v0, "app_log_encrypt_switch_count"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    const-string v2, "app_log_encrypt_faild_count"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/ss/android/common/applog/aa;->e:I

    .line 290
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 291
    const-string v2, "app_log_encrypt_faild_count"

    sget v3, Lcom/ss/android/common/applog/aa;->e:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 292
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/applog/aa;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :goto_1
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 294
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static addCommonParams(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    .line 81
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-object p0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {v0, p1}, Lcom/ss/android/common/applog/aa;->appendCommonParams(Ljava/lang/StringBuilder;Z)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static appendCommonParams(Ljava/lang/StringBuilder;Z)V
    .locals 5

    .prologue
    .line 61
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    .line 62
    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    .line 66
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :goto_1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    invoke-static {v0, p1}, Lcom/ss/android/common/applog/aa;->putCommonParams(Ljava/util/Map;Z)V

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    new-instance v3, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 68
    :cond_2
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 76
    :cond_3
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/NetworkUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 301
    sget-boolean v0, Lcom/ss/android/common/applog/aa;->d:Z

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 303
    :cond_0
    sget-object v1, Lcom/ss/android/common/applog/aa;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 305
    :try_start_0
    const-string v0, "app_log_encrypt_switch_count"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 308
    sget v2, Lcom/ss/android/common/applog/aa;->e:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 309
    sget v2, Lcom/ss/android/common/applog/aa;->e:I

    add-int/lit8 v2, v2, -0x2

    sput v2, Lcom/ss/android/common/applog/aa;->e:I

    .line 312
    :goto_1
    const-string v2, "app_log_encrypt_faild_count"

    sget v3, Lcom/ss/android/common/applog/aa;->e:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 313
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 314
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/applog/aa;->d:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :goto_2
    :try_start_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 311
    :cond_1
    const/4 v2, 0x0

    :try_start_2
    sput v2, Lcom/ss/android/common/applog/aa;->e:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static getAliyunUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/ss/android/common/applog/aa;->g:Lcom/ss/android/common/applog/l;

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/ss/android/common/applog/aa;->g:Lcom/ss/android/common/applog/l;

    invoke-interface {v0}, Lcom/ss/android/common/applog/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 241
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBadId(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 212
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v2

    .line 214
    :cond_1
    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string v0, "Null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 221
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 222
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-eq v3, v4, :cond_2

    :goto_2
    move v2, v1

    .line 227
    goto :goto_0

    .line 221
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method public static putCommonParams(Ljava/util/Map;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 89
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    .line 90
    if-eqz p0, :cond_0

    if-nez v0, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 94
    :try_start_0
    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->e()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/ss/android/common/util/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 95
    sget-object v2, Lcom/ss/android/common/applog/aa;->a:Lcom/ss/android/common/applog/aa$b;

    if-eqz v2, :cond_2

    .line 96
    sget-object v2, Lcom/ss/android/common/applog/aa;->a:Lcom/ss/android/common/applog/aa$b;

    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Lcom/ss/android/common/applog/aa$b;->a(Landroid/content/Context;Ljava/util/Map;)V

    .line 98
    :cond_2
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 99
    const-string v0, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "idmap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_3
    :goto_1
    const-string v0, "install_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 109
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 110
    const-string v2, "iid"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_4
    const-string v0, "device_id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 120
    const-string v2, "device_id"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_5
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->e()Landroid/content/Context;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_6

    .line 124
    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 126
    const-string v2, "ac"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_6
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->c()Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_7

    .line 130
    const-string v2, "channel"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_7
    const-string v0, "aid"

    sget-object v2, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    invoke-interface {v2}, Lcom/ss/android/common/applog/aa$a;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->d()Ljava/lang/String;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_8

    .line 135
    const-string v2, "app_name"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_8
    const-string v0, "version_code"

    .line 137
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->C()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "version_name"

    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->D()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "device_platform"

    const-string v2, "android"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    if-eqz p1, :cond_9

    .line 165
    const-string v0, "ssmix"

    const-string v2, "a"

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_9
    const-string v0, "device_type"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v0, "device_brand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v0, "language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v0, "os_api"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :try_start_1
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 173
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_a

    .line 174
    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_a
    const-string v2, "os_version"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_2
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->a()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/ss/android/common/applog/aa;->isBadId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 181
    const-string v2, "uuid"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_b
    const-string v0, "openudid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 184
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 185
    const-string v1, "openudid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_c
    sget-object v0, Lcom/ss/android/common/applog/aa;->g:Lcom/ss/android/common/applog/l;

    if-eqz v0, :cond_d

    .line 187
    sget-object v0, Lcom/ss/android/common/applog/aa;->g:Lcom/ss/android/common/applog/l;

    invoke-interface {v0}, Lcom/ss/android/common/applog/l;->a()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 189
    const-string v1, "aliyun_uuid"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_d
    const-string v0, "manifest_version_code"

    .line 194
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->C()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/common/utility/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 198
    const-string v1, "resolution"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_e
    sget-object v0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    invoke-interface {v0}, Lcom/ss/android/common/applog/aa$a;->e()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/common/utility/f;->d(Landroid/content/Context;)I

    move-result v0

    .line 201
    if-lez v0, :cond_f

    .line 202
    const-string v1, "dpi"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :cond_f
    const-string v0, "update_version_code"

    .line 206
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->C()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v0, "_rticket"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :cond_10
    :try_start_2
    invoke-static {v1}, Lcom/ss/android/common/c/b;->a(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 104
    :catch_0
    move-exception v0

    .line 106
    invoke-static {v1}, Lcom/ss/android/common/c/b;->a(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 176
    :catch_1
    move-exception v0

    goto/16 :goto_2
.end method

.method public static sendEncryptLog(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 247
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 277
    :goto_0
    return-object v0

    .line 249
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x2000

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 250
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 252
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 260
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 261
    invoke-static {p2}, Lcom/ss/android/common/applog/aa;->a(Landroid/content/Context;)V

    .line 262
    const/4 v0, 0x0

    .line 263
    sget v3, Lcom/ss/android/common/applog/aa;->e:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    .line 264
    const/4 v0, 0x1

    .line 265
    array-length v3, v2

    invoke-static {v2, v3}, Lcom/bytedance/frameworks/core/encrypt/TTEncryptUtils;->a([BI)[B

    move-result-object v2

    .line 266
    invoke-static {p2}, Lcom/ss/android/common/applog/aa;->b(Landroid/content/Context;)V

    .line 268
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 270
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?tt_data=a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 275
    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 276
    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream;tt-data=a"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3, v1}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BLjava/util/Map;Lcom/bytedance/common/utility/NetworkClient$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    :try_start_1
    const-string v3, "AppLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "compress with gzip exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    move-object v0, v1

    .line 255
    goto :goto_0

    .line 257
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v0

    .line 273
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&tt_data=a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 279
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "encrypt failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setAliYunHanlder(Lcom/ss/android/common/applog/l;)V
    .locals 0

    .prologue
    .line 233
    sput-object p0, Lcom/ss/android/common/applog/aa;->g:Lcom/ss/android/common/applog/l;

    .line 234
    return-void
.end method

.method public static setAppLogParams(Lcom/ss/android/common/applog/aa$a;)V
    .locals 0

    .prologue
    .line 46
    sput-object p0, Lcom/ss/android/common/applog/aa;->b:Lcom/ss/android/common/applog/aa$a;

    .line 47
    return-void
.end method

.method public static setAppParam(Lcom/ss/android/common/applog/aa$b;)V
    .locals 0

    .prologue
    .line 49
    sput-object p0, Lcom/ss/android/common/applog/aa;->a:Lcom/ss/android/common/applog/aa$b;

    .line 50
    return-void
.end method
