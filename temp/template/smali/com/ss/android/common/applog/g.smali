.class public Lcom/ss/android/common/applog/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field private static k:Lcom/ss/android/common/applog/g;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/applog/g;->a:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/common/applog/g;->b:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    .line 47
    iput-wide v2, p0, Lcom/ss/android/common/applog/g;->d:J

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/common/applog/g;->e:I

    .line 49
    iput-wide v2, p0, Lcom/ss/android/common/applog/g;->f:J

    .line 50
    iput-boolean v1, p0, Lcom/ss/android/common/applog/g;->g:Z

    .line 51
    iput-boolean v1, p0, Lcom/ss/android/common/applog/g;->h:Z

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/common/applog/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    .line 58
    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 288
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-wide v0

    .line 293
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 295
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/ss/android/common/applog/g;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ss/android/common/applog/g;->i()V

    return-void
.end method

.method static synthetic b(Lcom/ss/android/common/applog/g;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ss/android/common/applog/g;->k()V

    return-void
.end method

.method static synthetic c(Lcom/ss/android/common/applog/g;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/ss/android/common/applog/g;->j()V

    return-void
.end method

.method static synthetic d(Lcom/ss/android/common/applog/g;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 196
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const-string v0, "CustomChannelHandler"

    const-string v1, "getSystemRecordChannel"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "CustomChannelHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get mSystemRecordChannel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/ss/android/common/applog/g;->k:Lcom/ss/android/common/applog/g;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lcom/ss/android/common/applog/g;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lcom/ss/android/common/applog/g;->k:Lcom/ss/android/common/applog/g;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/ss/android/common/applog/g;

    invoke-direct {v0, p0}, Lcom/ss/android/common/applog/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ss/android/common/applog/g;->k:Lcom/ss/android/common/applog/g;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lcom/ss/android/common/applog/g;->k:Lcom/ss/android/common/applog/g;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 6

    .prologue
    .line 213
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "CustomChannelHandler"

    const-string v1, "getApkInfo"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 219
    :cond_2
    const/4 v1, 0x0

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 222
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 223
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 224
    :try_start_1
    invoke-static {v0}, Lcom/ss/android/common/applog/g;->a(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/ss/android/common/applog/g;->d:J

    .line 225
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 226
    const-string v1, "CustomChannelHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get mApkCreateTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/ss/android/common/applog/g;->d:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 233
    :cond_3
    :goto_1
    if-eqz v0, :cond_1

    .line 237
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "(.*)-(\\d+)(.*)"

    .line 239
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 240
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 242
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/common/applog/g;->e:I

    .line 246
    :goto_2
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "CustomChannelHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get mApkSuffixNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ss/android/common/applog/g;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 249
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 244
    :cond_4
    const/4 v0, -0x1

    iput v0, p0, Lcom/ss/android/common/applog/g;->e:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 230
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1

    .line 228
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private k()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "CustomChannelHandler"

    const-string v2, "getSystemCreateTime"

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/app"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 261
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 262
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 264
    array-length v4, v2

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_3

    aget-object v5, v2, v1

    .line 265
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 264
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_2
    const/4 v6, 0x5

    if-ge v0, v6, :cond_1

    .line 269
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 274
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/g;->f:J

    .line 275
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    const-string v0, "CustomChannelHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get mSystemCreateTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/ss/android/common/applog/g;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :cond_4
    :goto_2
    return-void

    .line 279
    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const-wide/16 v4, -0x1

    .line 87
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/ss/android/common/applog/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/ss/android/common/applog/g;->d:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget v1, p0, Lcom/ss/android/common/applog/g;->e:I

    if-ne v1, v6, :cond_1

    iget-wide v2, p0, Lcom/ss/android/common/applog/g;->f:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-object v0

    .line 92
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/g;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    const-string v1, "app_channel"

    iget-object v2, p0, Lcom/ss/android/common/applog/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    :cond_2
    iget-object v1, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 98
    const-string v1, "system_record_channel"

    iget-object v2, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_3
    iget-wide v2, p0, Lcom/ss/android/common/applog/g;->d:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    .line 101
    const-string v1, "apk_create_time"

    iget-wide v2, p0, Lcom/ss/android/common/applog/g;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    :cond_4
    iget v1, p0, Lcom/ss/android/common/applog/g;->e:I

    if-eq v1, v6, :cond_5

    .line 104
    const-string v1, "apk_shuffix_num"

    iget v2, p0, Lcom/ss/android/common/applog/g;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    :cond_5
    iget-wide v2, p0, Lcom/ss/android/common/applog/g;->f:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "system_create_time"

    iget-wide v2, p0, Lcom/ss/android/common/applog/g;->f:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_0
    const-string v0, "app_channel"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/g;->b:Ljava/lang/String;

    .line 77
    const-string v0, "system_record_channel"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    .line 78
    const-string v0, "apk_create_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/g;->d:J

    .line 79
    const-string v0, "apk_shuffix_num"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ss/android/common/applog/g;->e:I

    .line 80
    const-string v0, "system_create_time"

    const-wide/16 v2, -0x1

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/g;->f:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/ss/android/common/applog/g;->g:Z

    .line 137
    invoke-virtual {p0}, Lcom/ss/android/common/applog/g;->g()V

    .line 138
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    const-string v1, "system_record_channel"

    iget-object v2, p0, Lcom/ss/android/common/applog/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/ss/android/common/applog/g;->h:Z

    .line 146
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 132
    iget-boolean v0, p0, Lcom/ss/android/common/applog/g;->g:Z

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/ss/android/common/applog/g;->h:Z

    return v0
.end method

.method public e()Z
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 164
    iget-wide v0, p0, Lcom/ss/android/common/applog/g;->d:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/ss/android/common/applog/g;->f:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 165
    const/4 v0, 0x1

    .line 167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Lcom/ss/android/common/applog/h;

    invoke-direct {v0, p0}, Lcom/ss/android/common/applog/h;-><init>(Lcom/ss/android/common/applog/g;)V

    .line 191
    new-instance v1, Lcom/bytedance/common/utility/b/b;

    const-string v2, "get_apk_install_info"

    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/common/utility/b/b;-><init>(Ljava/lang/Runnable;Ljava/lang/String;Z)V

    .line 192
    invoke-virtual {v1}, Lcom/bytedance/common/utility/b/b;->a()V

    goto :goto_0
.end method

.method public g()V
    .locals 5

    .prologue
    .line 304
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 308
    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ss/android/common/applog/g;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 309
    if-eqz v1, :cond_0

    .line 311
    :try_start_0
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    const-string v2, "CustomChannelHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "save appInstallJson = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_2
    const-string v2, "custom_channels"

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :try_start_1
    const-string v3, "has_send_app_info"

    iget-boolean v4, p0, Lcom/ss/android/common/applog/g;->g:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 316
    const-string v3, "custom_channels"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 319
    const-string v3, "app_install_info"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 320
    invoke-static {v0}, Lcom/bytedance/common/utility/c/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 321
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public h()V
    .locals 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/g;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 334
    :try_start_0
    const-string v1, "custom_channels"

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :try_start_1
    const-string v2, "custom_channels"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 337
    const-string v3, "app_install_info"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ss/android/common/applog/g;->a(Lorg/json/JSONObject;)V

    .line 340
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const-string v0, "CustomChannelHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load appInstallJson = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    const-string v0, "has_send_app_info"

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/common/applog/g;->g:Z

    .line 344
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    :catch_0
    move-exception v0

    goto :goto_0
.end method
