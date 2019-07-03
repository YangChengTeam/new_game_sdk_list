.class public Lcom/ss/android/common/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/common/c/d$a;
    }
.end annotation


# static fields
.field private static volatile a:Z

.field private static volatile b:Z

.field private static final q:Ljava/lang/Object;

.field private static final r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile u:Ljava/lang/String;

.field private static w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ss/android/common/c/b$b;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/content/SharedPreferences;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lorg/json/JSONObject;

.field private final k:Ljava/lang/Object;

.field private l:Z

.field private m:J

.field private n:I

.field private o:J

.field private p:J

.field private s:J

.field private v:Lcom/ss/android/common/c/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/ss/android/common/c/d;->a:Z

    .line 70
    sput-boolean v0, Lcom/ss/android/common/c/d;->b:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/common/c/d;->q:Ljava/lang/Object;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/ss/android/common/c/d;->r:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/common/c/d;->t:Ljava/util/Map;

    .line 331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ss/android/common/c/d;->w:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/c/d;->k:Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Lcom/ss/android/common/c/d;->c:Landroid/content/Context;

    .line 97
    const-string v0, "applog_stats"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;I)I
    .locals 0

    .prologue
    .line 53
    iput p1, p0, Lcom/ss/android/common/c/d;->n:I

    return p1
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;J)J
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/ss/android/common/c/d;->p:J

    return-wide p1
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    sget-object v0, Lcom/ss/android/common/c/d;->u:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 103
    .line 105
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 110
    :goto_0
    if-eqz v1, :cond_0

    :try_start_1
    const-string v0, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xd

    if-ge v0, v2, :cond_5

    .line 113
    :cond_0
    const-string v0, "snssdk_openudid"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 115
    const-string v0, "openudid"

    const/4 v2, 0x0

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 117
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 118
    new-instance v2, Ljava/math/BigInteger;

    const/16 v4, 0x40

    invoke-direct {v2, v4, v0}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v0, 0x10

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x2d

    if-ne v0, v4, :cond_1

    .line 120
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xd

    .line 122
    if-lez v0, :cond_3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    :goto_1
    if-lez v0, :cond_2

    .line 125
    const/16 v5, 0x46

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v2, "RegisterServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when getting ANDROID_ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_2
    :try_start_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 131
    :cond_3
    if-eqz p1, :cond_6

    .line 132
    const-string v0, "openudid.dat"

    invoke-static {v0, v2}, Lcom/ss/android/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 137
    :goto_2
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 138
    const-string v3, "openudid"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    :cond_4
    :goto_3
    return-object v0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    const-string v2, "RegisterServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception when making openudid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    goto :goto_3

    :cond_6
    move-object v0, v2

    goto :goto_2
.end method

.method private a(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 279
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/ss/android/common/c/d;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    iget-object v0, p0, Lcom/ss/android/common/c/d;->g:Ljava/lang/String;

    .line 295
    :goto_0
    return-object v0

    .line 284
    :cond_0
    if-eqz p1, :cond_2

    .line 285
    :try_start_0
    const-string v1, "device_id"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 287
    :goto_1
    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ss/android/common/c/d;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v0, p0, Lcom/ss/android/common/c/d;->g:Ljava/lang/String;

    goto :goto_0

    .line 290
    :cond_1
    iput-object v1, p0, Lcom/ss/android/common/c/d;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 291
    goto :goto_0

    .line 292
    :catch_0
    move-exception v1

    .line 293
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    :cond_0
    :goto_0
    return-object p1

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/Android/data/com.snssdk.api/cache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    const/4 v3, 0x0

    .line 161
    const/4 v4, 0x0

    .line 163
    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 165
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 190
    if-eqz v1, :cond_2

    .line 191
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 196
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 197
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0

    .line 168
    :cond_3
    :try_start_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rwd"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 171
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 172
    const/16 v0, 0x81

    .line 173
    new-array v3, v0, [B

    .line 174
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    .line 175
    if-lez v4, :cond_6

    if-ge v4, v0, :cond_6

    .line 176
    new-instance v0, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v0, v3, v5, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 177
    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v3

    if-eqz v3, :cond_6

    .line 190
    if-eqz v1, :cond_4

    .line 191
    :try_start_6
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 196
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 197
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_5
    :goto_3
    move-object p1, v0

    .line 178
    goto/16 :goto_0

    .line 182
    :cond_6
    :try_start_8
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 183
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 184
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 190
    if-eqz v1, :cond_7

    .line 191
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 196
    :cond_7
    :goto_4
    if-eqz v2, :cond_0

    .line 197
    :try_start_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 198
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 186
    :catch_2
    move-exception v0

    move-object v2, v1

    .line 187
    :goto_5
    :try_start_b
    const-string v3, "RegisterServiceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load openudid exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 190
    if-eqz v2, :cond_8

    .line 191
    :try_start_c
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 196
    :cond_8
    :goto_6
    if-eqz v1, :cond_0

    .line 197
    :try_start_d
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_0

    .line 198
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 189
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 190
    :goto_7
    if-eqz v2, :cond_9

    .line 191
    :try_start_e
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 196
    :cond_9
    :goto_8
    if-eqz v1, :cond_a

    .line 197
    :try_start_f
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .line 200
    :cond_a
    :goto_9
    throw v0

    .line 192
    :catch_4
    move-exception v0

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto :goto_2

    .line 198
    :catch_6
    move-exception v1

    goto :goto_3

    .line 192
    :catch_7
    move-exception v0

    goto :goto_4

    :catch_8
    move-exception v0

    goto :goto_6

    :catch_9
    move-exception v2

    goto :goto_8

    .line 198
    :catch_a
    move-exception v1

    goto :goto_9

    .line 189
    :catchall_1
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 186
    :catch_b
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_5

    :catch_c
    move-exception v0

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    goto :goto_5
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ss/android/common/c/d;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 364
    sget-object v0, Lcom/ss/android/common/c/d;->r:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {p0}, Lcom/ss/android/common/c/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    sget-object v2, Lcom/ss/android/common/c/d;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 371
    :try_start_0
    sget-boolean v0, Lcom/ss/android/common/c/d;->a:Z

    if-eqz v0, :cond_2

    .line 372
    monitor-exit v2

    goto :goto_0

    .line 383
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 374
    :cond_2
    const-wide/16 v0, 0x5dc

    .line 375
    :try_start_1
    sget-boolean v3, Lcom/ss/android/common/c/d;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 376
    const-wide/16 v0, 0xfa0

    .line 379
    :cond_3
    :try_start_2
    sget-object v3, Lcom/ss/android/common/c/d;->q:Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    :goto_1
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/ss/android/common/c/d;->a:Z

    .line 383
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 11

    .prologue
    .line 691
    invoke-static {}, Lcom/ss/android/common/c/a;->d()Lcom/ss/android/common/c/b$a;

    move-result-object v1

    .line 692
    if-eqz v1, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    .line 693
    invoke-interface/range {v1 .. v10}, Lcom/ss/android/common/c/b$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 695
    :cond_0
    return-void
.end method

.method public static a(Lcom/ss/android/common/c/b$b;)V
    .locals 2

    .prologue
    .line 335
    if-nez p0, :cond_0

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    sget-object v0, Lcom/ss/android/common/c/d;->w:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 53
    invoke-direct/range {p0 .. p9}, Lcom/ss/android/common/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/ss/android/common/c/d;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;Z)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/ss/android/common/c/d;->c(Z)V

    return-void
.end method

.method static synthetic a(Lcom/ss/android/common/c/d;ZZ)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/ss/android/common/c/d;->a(ZZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 228
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ss/android/common/c/d;->u:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    sput-object p0, Lcom/ss/android/common/c/d;->u:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 683
    invoke-static {}, Lcom/ss/android/common/c/a;->d()Lcom/ss/android/common/c/b$a;

    move-result-object v0

    .line 684
    if-eqz v0, :cond_0

    .line 685
    invoke-interface {v0, p1, p2}, Lcom/ss/android/common/c/b$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 687
    :cond_0
    return-void
.end method

.method public static a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    sget-object v1, Lcom/ss/android/common/c/d;->t:Ljava/util/Map;

    monitor-enter v1

    .line 223
    :try_start_0
    sget-object v0, Lcom/ss/android/common/c/d;->t:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 224
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(ZZ)V
    .locals 2

    .prologue
    .line 735
    sget-object v0, Lcom/ss/android/common/c/d;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 736
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 738
    if-nez v0, :cond_0

    .line 739
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/c/b$b;

    .line 743
    if-nez v0, :cond_1

    .line 744
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 748
    :cond_1
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/common/c/b$b;->b(ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    move-exception v0

    .line 750
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 753
    :cond_2
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/ss/android/common/c/d;->b:Z

    return p0
.end method

.method static synthetic b(Lcom/ss/android/common/c/d;J)J
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/ss/android/common/c/d;->s:J

    return-wide p1
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    :try_start_0
    const-string v0, "snssdk_openudid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 241
    const-string v0, "clientudid"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    const-string v0, "clientudid.dat"

    invoke-static {v0, v1}, Lcom/ss/android/common/c/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 250
    const-string v2, "clientudid"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :cond_0
    :goto_1
    return-object v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string v1, "RegisterServiceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when making client_udid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, ""

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/ss/android/common/c/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ss/android/common/c/d;->h:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ss/android/common/c/d;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ss/android/common/c/d;->q()V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 206
    if-nez p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    return v0

    .line 208
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 209
    const/16 v1, 0xd

    if-lt v2, v1, :cond_0

    const/16 v1, 0x80

    if-gt v2, v1, :cond_0

    move v1, v0

    .line 211
    :goto_1
    if-ge v1, v2, :cond_6

    .line 212
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 213
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_5

    :cond_2
    const/16 v4, 0x61

    if-lt v3, v4, :cond_3

    const/16 v4, 0x66

    if-le v3, v4, :cond_5

    :cond_3
    const/16 v4, 0x41

    if-lt v3, v4, :cond_4

    const/16 v4, 0x46

    if-le v3, v4, :cond_5

    :cond_4
    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 211
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/ss/android/common/c/d;->a:Z

    return p0
.end method

.method static synthetic c(Lcom/ss/android/common/c/d;J)J
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/ss/android/common/c/d;->m:J

    return-wide p1
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 387
    if-nez p0, :cond_0

    .line 388
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    .line 389
    :cond_0
    const-string v0, "applog_stats"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    const-string v1, "device_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 714
    sget-object v0, Lcom/ss/android/common/c/d;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 715
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 716
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 717
    if-nez v0, :cond_0

    .line 718
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/c/b$b;

    .line 722
    if-nez v0, :cond_1

    .line 723
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 727
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ss/android/common/c/b$b;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 728
    :catch_0
    move-exception v0

    .line 729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 732
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/ss/android/common/c/d;)Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ss/android/common/c/d;->l:Z

    return v0
.end method

.method static synthetic d(Lcom/ss/android/common/c/d;)I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ss/android/common/c/d;->n:I

    return v0
.end method

.method static synthetic e(Lcom/ss/android/common/c/d;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/ss/android/common/c/d;->o:J

    return-wide v0
.end method

.method static synthetic f(Lcom/ss/android/common/c/d;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/ss/android/common/c/d;->m:J

    return-wide v0
.end method

.method static synthetic g(Lcom/ss/android/common/c/d;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/ss/android/common/c/d;->p:J

    return-wide v0
.end method

.method static synthetic h(Lcom/ss/android/common/c/d;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ss/android/common/c/d;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic i(Lcom/ss/android/common/c/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ss/android/common/c/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lcom/ss/android/common/c/d;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/ss/android/common/c/d;->s:J

    return-wide v0
.end method

.method static synthetic k(Lcom/ss/android/common/c/d;)Z
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ss/android/common/c/d;->r()Z

    move-result v0

    return v0
.end method

.method static synthetic l(Lcom/ss/android/common/c/d;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic l()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/ss/android/common/c/d;->b:Z

    return v0
.end method

.method static synthetic m(Lcom/ss/android/common/c/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m()Ljava/util/Map;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ss/android/common/c/d;->t:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ss/android/common/c/d;->u:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/ss/android/common/c/d;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ss/android/common/c/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ss/android/common/c/d;->r:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic o(Lcom/ss/android/common/c/d;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/ss/android/common/c/d;->s()V

    return-void
.end method

.method static synthetic p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/ss/android/common/c/d;->q:Ljava/lang/Object;

    return-object v0
.end method

.method private q()V
    .locals 6

    .prologue
    .line 699
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 701
    iget-object v2, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    const-string v3, "last_config_version"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/common/c/d;->n:I

    .line 702
    iget v2, p0, Lcom/ss/android/common/c/d;->n:I

    invoke-static {}, Lcom/ss/android/common/c/e;->a()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 703
    iget-object v2, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    const-string v3, "last_config_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 704
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    .line 707
    :goto_0
    iput-wide v0, p0, Lcom/ss/android/common/c/d;->m:J

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    const-string v1, "install_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    .line 710
    return-void

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method private r()Z
    .locals 1

    .prologue
    .line 756
    invoke-static {}, Lcom/ss/android/common/c/a;->c()Z

    move-result v0

    return v0
.end method

.method private s()V
    .locals 5

    .prologue
    .line 760
    const-string v0, "install_id"

    iget-object v1, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/common/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 761
    const-string v0, "device_id"

    invoke-virtual {p0}, Lcom/ss/android/common/c/d;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/common/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 762
    const-string v0, "ssid"

    iget-object v1, p0, Lcom/ss/android/common/c/d;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/common/c/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    sget-object v0, Lcom/ss/android/common/c/d;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 764
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 766
    if-nez v0, :cond_0

    .line 767
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/c/b$b;

    .line 771
    if-nez v0, :cond_1

    .line 772
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 776
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/android/common/c/d;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/ss/android/common/c/d;->h:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4}, Lcom/ss/android/common/c/b$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 777
    :catch_0
    move-exception v0

    .line 778
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 781
    :cond_2
    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ss/android/common/c/d;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/ss/android/common/c/d;->c:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ss/android/common/c/d;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/c/d;->e:Ljava/lang/String;

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/c/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/ss/android/common/c/d;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/ss/android/common/c/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/c/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/c/d;->f:Ljava/lang/String;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/c/d;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0}, Lcom/ss/android/common/c/d;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/ss/android/common/c/d;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    const-string v1, "ssid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/c/d;->h:Ljava/lang/String;

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/c/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/ss/android/common/c/d;->d:Landroid/content/SharedPreferences;

    const-string v1, "install_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/c/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 312
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/c/d;->j:Lorg/json/JSONObject;

    .line 313
    iget-object v0, p0, Lcom/ss/android/common/c/d;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/common/c/d;->j:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/ss/android/common/c/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    .line 314
    if-nez v0, :cond_0

    .line 315
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "init header error."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    new-instance v0, Lcom/ss/android/common/c/d$a;

    invoke-direct {v0, p0}, Lcom/ss/android/common/c/d$a;-><init>(Lcom/ss/android/common/c/d;)V

    iput-object v0, p0, Lcom/ss/android/common/c/d;->v:Lcom/ss/android/common/c/d$a;

    .line 320
    iget-object v0, p0, Lcom/ss/android/common/c/d;->v:Lcom/ss/android/common/c/d$a;

    invoke-virtual {v0}, Lcom/ss/android/common/c/d$a;->start()V

    .line 321
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ss/android/common/c/d;->v:Lcom/ss/android/common/c/d$a;

    if-nez v0, :cond_0

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/c/d;->v:Lcom/ss/android/common/c/d$a;

    invoke-static {v0}, Lcom/ss/android/common/c/d$a;->a(Lcom/ss/android/common/c/d$a;)V

    goto :goto_0
.end method

.method public i()V
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/c/d;->o:J

    .line 342
    return-void
.end method

.method public j()V
    .locals 2

    .prologue
    .line 345
    iget-object v1, p0, Lcom/ss/android/common/c/d;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/ss/android/common/c/d;->l:Z

    .line 347
    iget-object v0, p0, Lcom/ss/android/common/c/d;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 348
    monitor-exit v1

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lcom/ss/android/common/c/d;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/c/d;->k:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 398
    monitor-exit v1

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
