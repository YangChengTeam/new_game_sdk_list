.class Lcom/ss/android/common/applog/v;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static p:Landroid/content/Context;

.field private static final q:Ljava/io/FilenameFilter;

.field private static final r:Ljava/io/FilenameFilter;

.field private static s:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private static final t:Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ss/android/common/applog/t;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/content/Context;

.field private final c:Lorg/json/JSONObject;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lcom/ss/android/common/applog/AppLog$e;

.field private f:J

.field private g:J

.field private h:Lcom/ss/android/common/applog/z;

.field private i:J

.field private j:Ljava/util/concurrent/atomic/AtomicLong;

.field private k:I

.field private volatile l:Lorg/json/JSONObject;

.field private volatile m:J

.field private final n:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    new-instance v0, Lcom/ss/android/common/applog/w;

    invoke-direct {v0}, Lcom/ss/android/common/applog/w;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/v;->q:Ljava/io/FilenameFilter;

    .line 373
    new-instance v0, Lcom/ss/android/common/applog/x;

    invoke-direct {v0}, Lcom/ss/android/common/applog/x;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/v;->r:Ljava/io/FilenameFilter;

    .line 380
    new-instance v0, Lcom/ss/android/common/applog/y;

    invoke-direct {v0}, Lcom/ss/android/common/applog/y;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/v;->t:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/ss/android/common/applog/AppLog$e;Lcom/ss/android/common/applog/z;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ss/android/common/applog/t;",
            ">;",
            "Ljava/util/concurrent/atomic/AtomicBoolean;",
            "Lcom/ss/android/common/applog/AppLog$e;",
            "Lcom/ss/android/common/applog/z;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            ")V"
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 57
    const-string v0, "LogReaper"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 41
    iput-wide v4, p0, Lcom/ss/android/common/applog/v;->f:J

    .line 42
    iput-wide v4, p0, Lcom/ss/android/common/applog/v;->g:J

    .line 45
    iput-wide v4, p0, Lcom/ss/android/common/applog/v;->i:J

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/v;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/ss/android/common/applog/v;->k:I

    .line 48
    iput-object v2, p0, Lcom/ss/android/common/applog/v;->l:Lorg/json/JSONObject;

    .line 49
    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lcom/ss/android/common/applog/v;->m:J

    .line 448
    iput-object v2, p0, Lcom/ss/android/common/applog/v;->u:Ljava/lang/String;

    .line 495
    iput-object v2, p0, Lcom/ss/android/common/applog/v;->v:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/ss/android/common/applog/v;->c:Lorg/json/JSONObject;

    .line 60
    iput-object p3, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    .line 61
    iput-object p4, p0, Lcom/ss/android/common/applog/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    iput-object p5, p0, Lcom/ss/android/common/applog/v;->e:Lcom/ss/android/common/applog/AppLog$e;

    .line 63
    iput-object p6, p0, Lcom/ss/android/common/applog/v;->h:Lcom/ss/android/common/applog/z;

    .line 64
    iput-object p7, p0, Lcom/ss/android/common/applog/v;->n:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    iput-object p8, p0, Lcom/ss/android/common/applog/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    return-void
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ss/android/common/applog/v;->p:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 247
    .line 251
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 252
    const-string v1, "header"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 259
    :cond_0
    :goto_0
    return-object p1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 436
    if-nez p0, :cond_0

    .line 446
    :goto_0
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/applog/v;->p:Landroid/content/Context;

    .line 440
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/applog/v;->s:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 441
    sget-object v0, Lcom/ss/android/common/applog/v;->s:Ljava/lang/Thread$UncaughtExceptionHandler;

    sget-object v1, Lcom/ss/android/common/applog/v;->t:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-ne v0, v1, :cond_1

    .line 442
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/common/applog/v;->s:Ljava/lang/Thread$UncaughtExceptionHandler;

    goto :goto_0

    .line 444
    :cond_1
    sget-object v0, Lcom/ss/android/common/applog/v;->t:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/ss/android/common/applog/t;)V
    .locals 6

    .prologue
    .line 122
    monitor-enter p0

    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 124
    :cond_1
    :try_start_0
    instance-of v0, p1, Lcom/ss/android/common/applog/u;

    if-eqz v0, :cond_2

    .line 125
    check-cast p1, Lcom/ss/android/common/applog/u;

    .line 126
    iget-object v1, p1, Lcom/ss/android/common/applog/u;->a:Lcom/ss/android/common/applog/z;

    iget-object v2, p1, Lcom/ss/android/common/applog/u;->b:Lcom/ss/android/common/applog/z;

    iget-boolean v3, p1, Lcom/ss/android/common/applog/u;->c:Z

    iget-wide v4, p1, Lcom/ss/android/common/applog/u;->d:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/common/applog/v;->a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;ZJ)V

    .line 127
    iget-object v0, p1, Lcom/ss/android/common/applog/u;->b:Lcom/ss/android/common/applog/z;

    iput-object v0, p0, Lcom/ss/android/common/applog/v;->h:Lcom/ss/android/common/applog/z;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/v;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 129
    :cond_2
    :try_start_1
    instance-of v0, p1, Lcom/ss/android/common/applog/s;

    if-eqz v0, :cond_0

    .line 130
    check-cast p1, Lcom/ss/android/common/applog/s;

    .line 131
    iget-wide v0, p1, Lcom/ss/android/common/applog/s;->a:J

    invoke-direct {p0, v0, v1}, Lcom/ss/android/common/applog/v;->b(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;ZJ)V
    .locals 8

    .prologue
    .line 153
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/common/applog/v;->a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;ZJZ)V

    .line 154
    return-void
.end method

.method private a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;ZJZ)V
    .locals 12

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->c:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ss/android/common/applog/v;->l:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/common/applog/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 163
    :goto_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 235
    :cond_0
    :goto_1
    return-void

    .line 165
    :cond_1
    if-eqz p1, :cond_6

    .line 166
    const/4 v1, 0x1

    new-array v5, v1, [J

    .line 167
    if-eqz p3, :cond_5

    .line 168
    const/4 v1, 0x0

    aput-wide p4, v5, v1

    .line 172
    :goto_2
    iget-object v7, p0, Lcom/ss/android/common/applog/v;->e:Lcom/ss/android/common/applog/AppLog$e;

    .line 173
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 174
    iget-object v3, p0, Lcom/ss/android/common/applog/v;->c:Lorg/json/JSONObject;

    iget-object v9, p0, Lcom/ss/android/common/applog/v;->l:Lorg/json/JSONObject;

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/common/applog/i;->a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;Lorg/json/JSONObject;Z[J[Ljava/lang/String;Lcom/ss/android/common/applog/AppLog$e;ZLorg/json/JSONObject;)J

    move-result-wide v8

    .line 176
    const-wide/16 v2, 0x0

    cmp-long v1, v8, v2

    if-lez v1, :cond_0

    .line 177
    const/4 v1, 0x0

    aget-object v1, v6, v1

    .line 178
    const/4 v2, 0x0

    aget-wide v2, v5, v2

    cmp-long v2, v2, p4

    if-lez v2, :cond_2

    if-eqz p6, :cond_2

    .line 179
    new-instance v2, Lcom/ss/android/common/applog/u;

    invoke-direct {v2}, Lcom/ss/android/common/applog/u;-><init>()V

    .line 180
    iput-object p1, v2, Lcom/ss/android/common/applog/u;->a:Lcom/ss/android/common/applog/z;

    .line 181
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ss/android/common/applog/u;->c:Z

    .line 182
    const/4 v3, 0x0

    aget-wide v4, v5, v3

    iput-wide v4, v2, Lcom/ss/android/common/applog/u;->d:J

    .line 183
    iget-object v3, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    monitor-enter v3

    .line 184
    :try_start_1
    iget-object v4, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 185
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    :cond_2
    iget-object v2, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    const/4 v2, 0x0

    .line 190
    :try_start_2
    const-string v3, "AppLog"

    const-string v4, "begin to send batch logs"

    invoke-static {v3, v4}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->p()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Lcom/ss/android/common/applog/v;->m:J

    const-wide/32 v6, 0xdbba0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 194
    :cond_3
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->f()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v1, v4}, Lcom/ss/android/common/applog/v;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 195
    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    :try_start_3
    invoke-direct {p0}, Lcom/ss/android/common/applog/v;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 196
    const/4 v2, 0x1

    iput-boolean v2, p2, Lcom/ss/android/common/applog/z;->j:Z

    .line 197
    iget-wide v2, p2, Lcom/ss/android/common/applog/z;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/common/applog/i;->c(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 202
    :cond_4
    :goto_3
    invoke-virtual {v0, v8, v9, v1}, Lcom/ss/android/common/applog/i;->a(JZ)Z

    .line 203
    if-nez v1, :cond_0

    iget-wide v0, p0, Lcom/ss/android/common/applog/v;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 204
    iput-wide v8, p0, Lcom/ss/android/common/applog/v;->f:J

    goto/16 :goto_1

    .line 170
    :cond_5
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v5, v1

    goto/16 :goto_2

    .line 185
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 199
    :catch_0
    move-exception v1

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    .line 200
    :goto_4
    const-string v3, "AppLog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send session exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 210
    :cond_6
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/ss/android/common/applog/v;->k:I

    if-lez v0, :cond_0

    iget-boolean v0, p2, Lcom/ss/android/common/applog/z;->i:Z

    if-nez v0, :cond_0

    .line 213
    :try_start_5
    invoke-direct {p0}, Lcom/ss/android/common/applog/v;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 216
    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v1, "header"

    iget-object v2, p0, Lcom/ss/android/common/applog/v;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 219
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 220
    const-string v3, "datetime"

    iget-wide v4, p2, Lcom/ss/android/common/applog/z;->c:J

    invoke-static {v4, v5}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v3, "session_id"

    iget-object v4, p2, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v3, "local_time_ms"

    iget-wide v4, p2, Lcom/ss/android/common/applog/z;->c:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 223
    const-string v3, "tea_event_index"

    iget-wide v4, p2, Lcom/ss/android/common/applog/z;->d:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 224
    iget-boolean v3, p2, Lcom/ss/android/common/applog/z;->i:Z

    if-eqz v3, :cond_7

    .line 225
    const-string v3, "is_background"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 227
    :cond_7
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 228
    const-string v2, "launch"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/ss/android/common/applog/v;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 230
    :catch_1
    move-exception v0

    .line 231
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send launch exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 199
    :catch_2
    move-exception v2

    goto/16 :goto_4

    .line 161
    :catch_3
    move-exception v1

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 272
    :try_start_0
    invoke-direct {p0, p2}, Lcom/ss/android/common/applog/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_log: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 278
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 279
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    .line 280
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->n()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    .line 282
    :try_start_1
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lcom/ss/android/common/applog/aa;->sendEncryptLog(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 289
    :goto_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    move v0, v6

    .line 344
    :goto_1
    return v0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_2
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 291
    :cond_3
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 292
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_log response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    const-string v0, "ss_app_log"

    const-string v1, "magic_tag"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "success"

    const-string v1, "message"

    .line 295
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_7

    move v0, v7

    .line 296
    :goto_2
    if-eqz v0, :cond_5

    .line 298
    :try_start_3
    const-string v1, "server_time"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 299
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_5

    .line 300
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 301
    const-string v3, "server_time"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    .line 303
    const-string v3, "local_time"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 304
    iput-object v1, p0, Lcom/ss/android/common/applog/v;->l:Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 310
    :cond_5
    :goto_3
    :try_start_4
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->p()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 311
    const-string v1, "blacklist"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 312
    const-string v1, "AppLog"

    const-string v3, "blacklist"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "blacklist"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "v1"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 314
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 315
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    move v1, v6

    .line 316
    :goto_4
    if-ge v1, v4, :cond_8

    .line 317
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 318
    invoke-static {v5}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 319
    iget-object v7, p0, Lcom/ss/android/common/applog/v;->n:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v8, "black"

    invoke-virtual {v7, v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move v0, v6

    .line 295
    goto :goto_2

    .line 322
    :cond_8
    const-string v1, "blacklist"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "v3"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 323
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_c

    .line 324
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 325
    :goto_5
    if-ge v6, v2, :cond_c

    .line 326
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-static {v3}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 328
    iget-object v4, p0, Lcom/ss/android/common/applog/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v5, "black"

    invoke-virtual {v4, v3, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 332
    :cond_a
    const-string v1, "AppLog"

    const-string v2, "black list is empty"

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 334
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->n:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 336
    :cond_b
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 337
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->o:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 343
    :cond_c
    :goto_6
    const-wide/32 v2, 0x1d4c0

    :try_start_5
    iput-wide v2, p0, Lcom/ss/android/common/applog/v;->m:J
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 345
    :catch_1
    move-exception v1

    .line 346
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->p()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 347
    instance-of v0, v1, Lcom/bytedance/common/utility/CommonHttpException;

    if-eqz v0, :cond_d

    move-object v0, v1

    .line 348
    check-cast v0, Lcom/bytedance/common/utility/CommonHttpException;

    invoke-virtual {v0}, Lcom/bytedance/common/utility/CommonHttpException;->getResponseCode()I

    move-result v0

    const/16 v2, 0x1fd

    if-ne v0, v2, :cond_d

    .line 349
    const-string v0, "AppLog"

    const-string v2, "server return 509"

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-wide/32 v2, 0xdbba0

    iput-wide v2, p0, Lcom/ss/android/common/applog/v;->m:J

    .line 354
    :cond_d
    throw v1

    .line 341
    :catch_2
    move-exception v1

    goto :goto_6

    .line 306
    :catch_3
    move-exception v1

    goto/16 :goto_3
.end method

.method static synthetic b()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ss/android/common/applog/v;->r:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method private b(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 136
    cmp-long v0, p1, v4

    if-gtz v0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "try to batch session  id < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v0

    .line 140
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/common/applog/i;->b(J)Lcom/ss/android/common/applog/z;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_0

    .line 142
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/common/applog/v;->a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;ZJ)V

    .line 143
    new-instance v0, Lcom/ss/android/common/applog/s;

    invoke-direct {v0}, Lcom/ss/android/common/applog/s;-><init>()V

    .line 144
    iget-wide v2, v1, Lcom/ss/android/common/applog/z;->a:J

    iput-wide v2, v0, Lcom/ss/android/common/applog/s;->a:J

    .line 145
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ss/android/common/applog/v;->s:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/ss/android/common/applog/v;->t:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method private e()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->c:Lorg/json/JSONObject;

    const-string v2, "device_id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 243
    :cond_0
    :goto_0
    return v0

    .line 240
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v0

    .line 360
    invoke-virtual {v0}, Lcom/ss/android/common/applog/i;->a()V

    .line 361
    return-void
.end method

.method private g()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 454
    .line 456
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/ss/android/common/util/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ss_crash_logs"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v3, Lcom/ss/android/common/applog/v;->r:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 458
    if-eqz v5, :cond_0

    array-length v2, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_1

    .line 491
    :cond_0
    invoke-static {v1}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 493
    :goto_0
    return-void

    .line 462
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v5, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 464
    iget-object v6, p0, Lcom/ss/android/common/applog/v;->u:Ljava/lang/String;

    .line 465
    const/4 v2, 0x0

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/common/applog/v;->u:Ljava/lang/String;

    .line 466
    array-length v7, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v0

    move-object v2, v1

    .line 468
    :goto_1
    if-ge v4, v7, :cond_4

    .line 469
    :try_start_2
    aget-object v8, v5, v4

    .line 470
    const/4 v3, 0x5

    if-ge v4, v3, :cond_2

    if-eqz v6, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 471
    :cond_2
    const/4 v0, 0x1

    move v3, v0

    .line 473
    :goto_2
    if-nez v3, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v10

    const-wide/16 v12, 0x4000

    cmp-long v0, v10, v12

    if-gez v0, :cond_3

    .line 475
    :try_start_3
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 476
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 477
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 479
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/v;->c(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v2, v1

    .line 485
    :cond_3
    :goto_3
    :try_start_6
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 468
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto :goto_1

    .line 481
    :catch_0
    move-exception v2

    :goto_5
    move-object v2, v0

    goto :goto_3

    .line 491
    :cond_4
    invoke-static {v2}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 489
    :catch_1
    move-exception v0

    .line 491
    :goto_6
    invoke-static {v1}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_7
    invoke-static {v1}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    throw v0

    .line 486
    :catch_2
    move-exception v0

    goto :goto_4

    .line 491
    :catchall_1
    move-exception v1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_7

    .line 489
    :catch_3
    move-exception v0

    move-object v1, v2

    goto :goto_6

    .line 481
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_5
    move v3, v0

    goto :goto_2
.end method

.method private h()V
    .locals 23

    .prologue
    .line 497
    const/4 v3, 0x0

    .line 499
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/ss/android/common/util/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ss_native_crash_logs"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v4, Lcom/ss/android/common/applog/v;->q:Ljava/io/FilenameFilter;

    invoke-virtual {v2, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v12

    .line 501
    if-eqz v12, :cond_0

    array-length v2, v12
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v2, :cond_1

    .line 559
    :cond_0
    invoke-static {v3}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    .line 561
    :goto_0
    return-void

    .line 504
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-static {v12, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 505
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ss/android/common/applog/v;->v:Ljava/lang/String;

    .line 506
    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/ss/android/common/applog/v;->v:Ljava/lang/String;

    .line 507
    array-length v14, v12
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 508
    const/4 v7, 0x0

    .line 510
    const/4 v2, 0x0

    move v8, v2

    move-object v2, v3

    move v3, v7

    :goto_1
    if-ge v8, v14, :cond_9

    .line 511
    :try_start_2
    aget-object v15, v12, v8

    .line 512
    const/4 v4, 0x5

    if-ge v8, v4, :cond_2

    if-eqz v13, :cond_b

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 513
    :cond_2
    const/4 v3, 0x1

    move v7, v3

    .line 515
    :goto_2
    const-wide/16 v10, 0x0

    .line 517
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 518
    const/4 v4, 0x0

    .line 519
    const/4 v3, 0x0

    .line 520
    if-nez v7, :cond_a

    invoke-virtual {v15}, Ljava/io/File;->length()J
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v18

    const-wide/16 v20, 0x4000

    cmp-long v5, v18, v20

    if-gez v5, :cond_a

    .line 522
    :try_start_3
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v15}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v9, v3

    move-object v2, v4

    move-wide v4, v10

    .line 523
    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 524
    if-nez v9, :cond_3

    .line 525
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 532
    :goto_4
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_3

    .line 527
    :cond_3
    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    move-object v2, v3

    .line 528
    goto :goto_4

    .line 530
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "\n"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 548
    :catch_0
    move-exception v2

    move-object v2, v6

    :goto_5
    move-object v3, v2

    .line 552
    :goto_6
    :try_start_5
    invoke-virtual {v15}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 510
    :goto_7
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move-object v2, v3

    move v3, v7

    goto :goto_1

    .line 534
    :cond_5
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 535
    const/4 v3, 0x0

    .line 536
    :try_start_7
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 537
    const-string v9, "data"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v9, "is_native_crash"

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 539
    const-string v9, "no_process_name"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 540
    const-string v9, "process_name"

    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    :cond_6
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_7

    .line 542
    const-string v9, "crash_time"

    invoke-virtual {v6, v9, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 543
    :cond_7
    if-eqz v2, :cond_8

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 544
    const-string v2, "remote_process"

    const/4 v4, 0x1

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 547
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/ss/android/common/applog/v;->c(Lorg/json/JSONObject;)V

    goto :goto_6

    .line 548
    :catch_1
    move-exception v2

    move-object v2, v3

    goto :goto_5

    .line 546
    :cond_8
    const-string v2, "remote_process"

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    .line 556
    :catch_2
    move-exception v2

    .line 557
    :goto_9
    :try_start_8
    const-string v4, "AppLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse native crash log exceptin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 559
    invoke-static {v3}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v2}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :goto_a
    invoke-static {v3}, Lcom/bytedance/common/utility/io/a;->a(Ljava/io/Closeable;)V

    throw v2

    .line 553
    :catch_3
    move-exception v2

    goto/16 :goto_7

    .line 559
    :catchall_1
    move-exception v2

    move-object v3, v6

    goto :goto_a

    :catchall_2
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    goto :goto_a

    .line 556
    :catch_4
    move-exception v2

    move-object v3, v6

    goto :goto_9

    :catch_5
    move-exception v3

    move-object/from16 v22, v3

    move-object v3, v2

    move-object/from16 v2, v22

    goto :goto_9

    .line 548
    :catch_6
    move-exception v3

    goto/16 :goto_5

    :cond_a
    move-object v3, v2

    goto/16 :goto_6

    :cond_b
    move v7, v3

    goto/16 :goto_2
.end method

.method private i()Z
    .locals 10

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 563
    invoke-direct {p0}, Lcom/ss/android/common/applog/v;->g()V

    .line 564
    invoke-direct {p0}, Lcom/ss/android/common/applog/v;->h()V

    .line 566
    iget-object v2, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 605
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    iget-wide v2, p0, Lcom/ss/android/common/applog/v;->f:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_2

    .line 569
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ss/android/common/applog/v;->g:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/ss/android/common/applog/v;->m:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 570
    iput-wide v6, p0, Lcom/ss/android/common/applog/v;->f:J

    .line 571
    invoke-direct {p0}, Lcom/ss/android/common/applog/v;->f()V

    .line 572
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ss/android/common/applog/v;->g:J

    .line 575
    :cond_2
    iget-wide v2, p0, Lcom/ss/android/common/applog/v;->f:J

    cmp-long v2, v2, v6

    if-ltz v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v3

    .line 578
    iget-wide v4, p0, Lcom/ss/android/common/applog/v;->f:J

    invoke-virtual {v3, v4, v5}, Lcom/ss/android/common/applog/i;->a(J)Lcom/ss/android/common/applog/q;

    move-result-object v4

    .line 579
    if-nez v4, :cond_3

    .line 580
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ss/android/common/applog/v;->f:J

    goto :goto_0

    .line 583
    :cond_3
    iget-wide v6, p0, Lcom/ss/android/common/applog/v;->f:J

    iget-wide v8, v4, Lcom/ss/android/common/applog/q;->a:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_5

    .line 584
    iget-wide v6, v4, Lcom/ss/android/common/applog/q;->a:J

    iput-wide v6, p0, Lcom/ss/android/common/applog/v;->f:J

    .line 587
    :goto_1
    iget-object v2, v4, Lcom/ss/android/common/applog/q;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v4, Lcom/ss/android/common/applog/q;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 588
    goto :goto_0

    .line 586
    :cond_5
    iget-wide v6, p0, Lcom/ss/android/common/applog/v;->f:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/ss/android/common/applog/v;->f:J

    goto :goto_1

    .line 591
    :cond_6
    :try_start_0
    iget v2, v4, Lcom/ss/android/common/applog/q;->f:I

    if-nez v2, :cond_7

    .line 592
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v4, Lcom/ss/android/common/applog/q;->b:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-direct {p0, v2, v5, v6}, Lcom/ss/android/common/applog/v;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 604
    :goto_2
    iget-wide v4, v4, Lcom/ss/android/common/applog/q;->a:J

    invoke-virtual {v3, v4, v5, v0}, Lcom/ss/android/common/applog/i;->a(JZ)Z

    move v0, v1

    .line 605
    goto :goto_0

    .line 593
    :cond_7
    :try_start_1
    iget v2, v4, Lcom/ss/android/common/applog/q;->f:I

    if-ne v2, v1, :cond_8

    .line 594
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v4, Lcom/ss/android/common/applog/q;->b:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v2, v5, v6}, Lcom/ss/android/common/applog/v;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_2

    .line 595
    :cond_8
    iget v0, v4, Lcom/ss/android/common/applog/q;->f:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    move v0, v1

    .line 596
    goto :goto_2

    :cond_9
    move v0, v1

    .line 599
    goto :goto_2

    .line 601
    :catch_0
    move-exception v2

    .line 602
    const-string v5, "AppLog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send session exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/ss/android/common/applog/v;->k:I

    .line 74
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 70
    return-void
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ss/android/common/applog/v;->l:Lorg/json/JSONObject;

    .line 78
    return-void
.end method

.method declared-synchronized b(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 83
    iget-object v4, p0, Lcom/ss/android/common/applog/v;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    :try_start_1
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateHeader exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_0
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 102
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 119
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v0

    .line 106
    const-string v1, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v1, "header"

    iget-object v2, p0, Lcom/ss/android/common/applog/v;->c:Lorg/json/JSONObject;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    const-string v2, "AppLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert crash log data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_2
    invoke-virtual {v0, v1}, Lcom/ss/android/common/applog/i;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 113
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-string v2, "AppLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert crash log id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_2
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertCrashlog exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 14

    .prologue
    .line 613
    const-string v0, "AppLog"

    const-string v1, "LogReaper start"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-direct {p0}, Lcom/ss/android/common/applog/v;->f()V

    .line 615
    const/4 v7, 0x0

    .line 616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/v;->g:J

    .line 617
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/v;->i:J

    .line 618
    const/4 v0, 0x0

    move v10, v0

    .line 620
    :cond_0
    :goto_0
    if-nez v7, :cond_3

    .line 621
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 623
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    :goto_1
    const-string v0, "AppLog"

    const-string v1, "LogReaper quit"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-void

    .line 624
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/applog/t;

    move-object v7, v0

    .line 626
    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 628
    :cond_3
    if-eqz v7, :cond_4

    .line 629
    invoke-direct {p0, v7}, Lcom/ss/android/common/applog/v;->a(Lcom/ss/android/common/applog/t;)V

    .line 630
    const/4 v7, 0x0

    .line 631
    goto :goto_0

    .line 626
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 634
    :cond_4
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 635
    const-wide/16 v2, 0x4e20

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 636
    const-wide/16 v0, 0x0

    move-wide v8, v0

    .line 638
    :goto_2
    iget-object v1, p0, Lcom/ss/android/common/applog/v;->h:Lcom/ss/android/common/applog/z;

    .line 639
    if-eqz v1, :cond_7

    iget-boolean v0, v1, Lcom/ss/android/common/applog/z;->i:Z

    if-nez v0, :cond_7

    iget-wide v2, v1, Lcom/ss/android/common/applog/z;->a:J

    .line 640
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 641
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v0, v2, v12

    if-gtz v0, :cond_8

    .line 642
    :cond_5
    const-wide/16 v8, 0x0

    .line 655
    :cond_6
    :goto_4
    invoke-direct {p0}, Lcom/ss/android/common/applog/v;->i()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 656
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    add-int/lit8 v0, v10, 0x1

    .line 658
    const/4 v1, 0x4

    if-gt v0, v1, :cond_a

    move v10, v0

    .line 659
    goto :goto_0

    .line 639
    :cond_7
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 643
    :cond_8
    iget-wide v2, p0, Lcom/ss/android/common/applog/v;->i:J

    sub-long v2, v4, v2

    cmp-long v0, v2, v8

    if-lez v0, :cond_6

    .line 644
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 645
    iput-wide v4, p0, Lcom/ss/android/common/applog/v;->i:J

    .line 646
    const-string v0, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/ss/android/common/applog/v;->a(Lcom/ss/android/common/applog/z;Lcom/ss/android/common/applog/z;ZJZ)V

    goto :goto_4

    .line 650
    :cond_9
    const-wide/16 v8, 0x0

    goto :goto_4

    .line 661
    :cond_a
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/common/applog/v;->f:J

    .line 666
    :cond_b
    const/4 v1, 0x0

    .line 667
    iget-object v2, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    monitor-enter v2

    .line 668
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-eqz v0, :cond_d

    .line 670
    const-wide/16 v4, 0x0

    cmp-long v0, v8, v4

    if-lez v0, :cond_c

    .line 671
    :try_start_4
    const-string v0, "AppLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wait for batch event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 679
    :goto_5
    :try_start_5
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 680
    monitor-exit v2

    goto/16 :goto_1

    .line 684
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 674
    :cond_c
    :try_start_6
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 676
    :catch_0
    move-exception v0

    goto :goto_5

    .line 682
    :cond_d
    :try_start_7
    iget-object v0, p0, Lcom/ss/android/common/applog/v;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/applog/t;

    .line 684
    :goto_6
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move v10, v1

    move-object v7, v0

    .line 685
    goto/16 :goto_0

    :cond_e
    move-object v0, v7

    goto :goto_6

    :cond_f
    move-wide v8, v0

    goto/16 :goto_2
.end method
