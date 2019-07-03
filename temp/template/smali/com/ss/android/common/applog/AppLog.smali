.class public Lcom/ss/android/common/applog/AppLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/common/applog/aa$a;
.implements Lcom/ss/android/common/applog/ae$a;
.implements Lcom/ss/android/common/c/b$a;
.implements Lcom/ss/android/common/c/b$b;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/common/applog/AppLog$b;,
        Lcom/ss/android/common/applog/AppLog$ConfigUpdateListener;,
        Lcom/ss/android/common/applog/AppLog$a;,
        Lcom/ss/android/common/applog/AppLog$ActionQueueType;,
        Lcom/ss/android/common/applog/AppLog$c;,
        Lcom/ss/android/common/applog/AppLog$e;,
        Lcom/ss/android/common/applog/AppLog$d;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final J:Ljava/lang/Object;

.field private static K:Z

.field private static volatile L:Z

.field private static volatile M:Z

.field private static N:J

.field private static O:Ljava/lang/String;

.field private static P:Ljava/lang/String;

.field private static final Q:Ljava/text/SimpleDateFormat;

.field private static final R:Ljava/lang/Object;

.field private static S:Lcom/ss/android/common/applog/AppLog;

.field private static T:Z

.field private static U:Ljava/lang/String;

.field private static V:I

.field static final a:[Ljava/lang/String;

.field private static aB:Z

.field private static aD:J

.field private static volatile aF:Z

.field private static volatile aG:Z

.field private static volatile aH:J

.field private static volatile aK:Ljava/lang/String;

.field private static final aL:Ljava/util/Map;
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

.field private static volatile aM:J

.field private static final aP:Ljava/lang/Object;

.field private static final aQ:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static aW:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/ss/android/common/applog/AppLog$ConfigUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field static volatile b:Z

.field static c:Ljava/util/concurrent/atomic/AtomicLong;

.field static d:Lcom/ss/android/common/applog/AppLog$e;

.field static e:Lcom/ss/android/common/applog/AppLog$d;

.field static f:Ljava/lang/String;

.field static g:Ljava/lang/String;

.field static h:Ljava/lang/String;

.field static i:Ljava/lang/String;

.field static q:I

.field public static r:I

.field private static u:Z

.field private static v:Z

.field private static w:Z

.field private static x:Z

.field private static y:Z

.field private static z:Z


# instance fields
.field private volatile A:J

.field private volatile B:J

.field private volatile C:Lorg/json/JSONObject;

.field private volatile D:Lorg/json/JSONObject;

.field private volatile E:Ljava/lang/String;

.field private volatile F:Ljava/lang/String;

.field private volatile G:Ljava/lang/String;

.field private volatile H:Lorg/json/JSONObject;

.field private volatile I:Z

.field private W:J

.field private X:Lcom/ss/android/common/applog/a;

.field private Y:Lcom/ss/android/common/applog/ae;

.field private Z:I

.field private aA:I

.field private final aC:Lcom/ss/android/common/AppContext;

.field private aE:Lcom/ss/android/common/applog/af;

.field private final aI:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private final aJ:Ljava/util/concurrent/ConcurrentHashMap;
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

.field private final aN:Ljava/util/concurrent/atomic/AtomicLong;

.field private aO:J

.field private volatile aR:Ljava/lang/String;

.field private volatile aS:I

.field private volatile aT:J

.field private volatile aU:I

.field private volatile aV:Z

.field private aa:J

.field private final ab:Landroid/content/Context;

.field private final ac:Lorg/json/JSONObject;

.field private final ad:Lorg/json/JSONObject;

.field private final ae:Lorg/json/JSONObject;

.field private final af:Lorg/json/JSONObject;

.field private ag:J

.field private ah:Z

.field private ai:Z

.field private aj:Z

.field private final ak:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile al:Z

.field private final am:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private an:Lcom/ss/android/common/applog/z;

.field private ao:J

.field private ap:J

.field private aq:I

.field private ar:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private as:I

.field private at:Lorg/json/JSONObject;

.field private au:Ljava/util/concurrent/atomic/AtomicInteger;

.field private av:Ljava/util/concurrent/atomic/AtomicInteger;

.field private aw:J

.field private volatile ax:J

.field private volatile ay:J

.field private volatile az:Z

.field j:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

.field volatile k:Z

.field final l:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ss/android/common/applog/AppLog$a;",
            ">;"
        }
    .end annotation
.end field

.field final m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ss/android/common/applog/t;",
            ">;"
        }
    .end annotation
.end field

.field volatile n:Lcom/ss/android/common/applog/v;

.field o:Ljava/lang/Thread$UncaughtExceptionHandler;

.field p:Lcom/ss/android/common/applog/AppLog$c;

.field private final s:Landroid/content/Context;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    sput-boolean v4, Lcom/ss/android/common/applog/AppLog;->u:Z

    .line 144
    sput-boolean v4, Lcom/ss/android/common/applog/AppLog;->v:Z

    .line 145
    sput-boolean v4, Lcom/ss/android/common/applog/AppLog;->w:Z

    .line 146
    sput-boolean v4, Lcom/ss/android/common/applog/AppLog;->x:Z

    .line 147
    sput-boolean v4, Lcom/ss/android/common/applog/AppLog;->y:Z

    .line 148
    sput-boolean v4, Lcom/ss/android/common/applog/AppLog;->z:Z

    .line 263
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->J:Ljava/lang/Object;

    .line 268
    sput-boolean v3, Lcom/ss/android/common/applog/AppLog;->K:Z

    .line 270
    sput-boolean v3, Lcom/ss/android/common/applog/AppLog;->L:Z

    .line 271
    sput-boolean v3, Lcom/ss/android/common/applog/AppLog;->M:Z

    .line 272
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/ss/android/common/applog/AppLog;->N:J

    .line 275
    const/16 v0, 0x33

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "appkey"

    aput-object v1, v0, v3

    const-string v1, "udid"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "openudid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "sdk_version"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "channel"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "app_version"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "version_code"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "timezone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "access"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "os"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "os_version"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "os_api"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "device_model"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "device_brand"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "device_manufacturer"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "resolution"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "display_density"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "density_dpi"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "mc"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "carrier"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "mcc_mnc"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "clientudid"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "install_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "device_id"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sig_hash"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "aid"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "push_sdk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "rom"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "aliyun_uuid"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "release_build"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "update_version_code"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "manifest_version_code"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "cpu_abi"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "build_serial"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "app_track"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "custom"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "sdk_version_name"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "user_unique_id"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ab_version"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "region"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "tz_name"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "tz_offset"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "sim_region"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ssid"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ab_server_version"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "google_aid"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "app_language"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "app_region"

    aput-object v2, v0, v1

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    .line 340
    const-string v0, "toblog.snssdk.com"

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->O:Ljava/lang/String;

    .line 341
    const-string v0, "ichannel.snssdk.com"

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->P:Ljava/lang/String;

    .line 374
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->Q:Ljava/text/SimpleDateFormat;

    .line 379
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->R:Ljava/lang/Object;

    .line 382
    sput-boolean v3, Lcom/ss/android/common/applog/AppLog;->b:Z

    .line 384
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 393
    sput-boolean v3, Lcom/ss/android/common/applog/AppLog;->T:Z

    .line 395
    const-string v0, ""

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->U:Ljava/lang/String;

    .line 396
    sput v4, Lcom/ss/android/common/applog/AppLog;->V:I

    .line 444
    sput-boolean v3, Lcom/ss/android/common/applog/AppLog;->aB:Z

    .line 446
    sput v3, Lcom/ss/android/common/applog/AppLog;->q:I

    .line 452
    sput-boolean v3, Lcom/ss/android/common/applog/AppLog;->aG:Z

    .line 459
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->aL:Ljava/util/Map;

    .line 864
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->aP:Ljava/lang/Object;

    .line 865
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->aQ:Ljava/lang/ThreadLocal;

    .line 2060
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->aW:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/ss/android/common/AppContext;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->W:J

    .line 399
    iput-object v3, p0, Lcom/ss/android/common/applog/AppLog;->j:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->k:Z

    .line 402
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    .line 403
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    .line 404
    iput-object v3, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    .line 405
    iput-object v3, p0, Lcom/ss/android/common/applog/AppLog;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 406
    iput-object v3, p0, Lcom/ss/android/common/applog/AppLog;->X:Lcom/ss/android/common/applog/a;

    .line 407
    iput-object v3, p0, Lcom/ss/android/common/applog/AppLog;->Y:Lcom/ss/android/common/applog/ae;

    .line 408
    iput v2, p0, Lcom/ss/android/common/applog/AppLog;->Z:I

    .line 411
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->aa:J

    .line 417
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    .line 418
    iput-boolean v2, p0, Lcom/ss/android/common/applog/AppLog;->ah:Z

    .line 419
    iput-boolean v2, p0, Lcom/ss/android/common/applog/AppLog;->ai:Z

    .line 420
    iput-boolean v2, p0, Lcom/ss/android/common/applog/AppLog;->aj:Z

    .line 421
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ak:Ljava/util/HashSet;

    .line 422
    iput-boolean v2, p0, Lcom/ss/android/common/applog/AppLog;->al:Z

    .line 423
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 425
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    .line 426
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ap:J

    .line 427
    iput v2, p0, Lcom/ss/android/common/applog/AppLog;->aq:I

    .line 429
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    .line 430
    const/16 v0, 0x2000

    iput v0, p0, Lcom/ss/android/common/applog/AppLog;->as:I

    .line 432
    iput-object v3, p0, Lcom/ss/android/common/applog/AppLog;->at:Lorg/json/JSONObject;

    .line 434
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->au:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 435
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aw:J

    .line 439
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ax:J

    .line 440
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ay:J

    .line 441
    iput-boolean v2, p0, Lcom/ss/android/common/applog/AppLog;->az:Z

    .line 442
    iput v2, p0, Lcom/ss/android/common/applog/AppLog;->aA:I

    .line 456
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aI:Ljava/util/concurrent/ConcurrentHashMap;

    .line 457
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aJ:Ljava/util/concurrent/ConcurrentHashMap;

    .line 463
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aN:Ljava/util/concurrent/atomic/AtomicLong;

    .line 997
    invoke-static {p0}, Lcom/ss/android/common/applog/aa;->setAppLogParams(Lcom/ss/android/common/applog/aa$a;)V

    .line 998
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->s:Landroid/content/Context;

    .line 999
    iput-object p2, p0, Lcom/ss/android/common/applog/AppLog;->aC:Lcom/ss/android/common/AppContext;

    .line 1000
    invoke-static {p2}, Lcom/ss/android/common/c/e;->a(Lcom/ss/android/common/AppContext;)V

    .line 1001
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    .line 1002
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    .line 1003
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    .line 1004
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ae:Lorg/json/JSONObject;

    .line 1005
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->H:Lorg/json/JSONObject;

    .line 1006
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/common/applog/AppLog;->aD:J

    .line 1008
    invoke-direct {p0, p1}, Lcom/ss/android/common/applog/AppLog;->b(Landroid/content/Context;)V

    .line 1009
    new-instance v0, Lcom/ss/android/common/applog/AppLog$b;

    invoke-direct {v0, p0}, Lcom/ss/android/common/applog/AppLog$b;-><init>(Lcom/ss/android/common/applog/AppLog;)V

    invoke-virtual {v0}, Lcom/ss/android/common/applog/AppLog$b;->start()V

    .line 1010
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->T:Z

    if-eqz v0, :cond_0

    .line 1011
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1012
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-ne v0, p0, :cond_1

    .line 1013
    iput-object v3, p0, Lcom/ss/android/common/applog/AppLog;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 1019
    :cond_0
    :goto_0
    new-instance v0, Lcom/ss/android/common/applog/af;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/ss/android/common/applog/af;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aE:Lcom/ss/android/common/applog/af;

    .line 1020
    return-void

    .line 1015
    :cond_1
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    goto :goto_0
.end method

.method static C()I
    .locals 1

    .prologue
    .line 2682
    sget v0, Lcom/ss/android/common/applog/AppLog;->V:I

    return v0
.end method

.method static D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2686
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->U:Ljava/lang/String;

    return-object v0
.end method

.method private E()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 567
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ae:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 569
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ae:Lorg/json/JSONObject;

    const-string v2, "ab_config"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 571
    monitor-exit v1

    .line 574
    :goto_0
    return-object v0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 574
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private F()J
    .locals 2

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->p:Lcom/ss/android/common/applog/AppLog$c;

    if-eqz v0, :cond_0

    .line 1237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1239
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aa:J

    goto :goto_0
.end method

.method private G()V
    .locals 4

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {}, Lcom/ss/android/common/applog/e;->getSPName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1842
    const-string v1, "key_global_event_index_matrix"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1843
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->aN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1846
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->I()V

    .line 1847
    return-void
.end method

.method private declared-synchronized H()V
    .locals 6

    .prologue
    .line 1862
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->aO:J

    const-wide/16 v4, 0x2

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1863
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    :cond_0
    monitor-exit p0

    return-void

    .line 1862
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private I()V
    .locals 5

    .prologue
    .line 1868
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    .line 1869
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {}, Lcom/ss/android/common/applog/e;->getSPName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1870
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1871
    const-string v3, "key_global_event_index_matrix"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1872
    invoke-static {v2}, Lcom/bytedance/common/utility/c/a;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 1874
    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aO:J

    .line 1875
    return-void
.end method

.method private J()V
    .locals 1

    .prologue
    .line 2037
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aW:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2038
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aW:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/common/applog/AppLog$ConfigUpdateListener;

    .line 2039
    if-eqz v0, :cond_0

    .line 2041
    :try_start_0
    invoke-interface {v0}, Lcom/ss/android/common/applog/AppLog$ConfigUpdateListener;->onConfigUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 2042
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private K()Z
    .locals 2

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 2492
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aE:Lcom/ss/android/common/applog/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aE:Lcom/ss/android/common/applog/af;

    .line 2493
    invoke-virtual {v0}, Lcom/ss/android/common/applog/af;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    const/4 v0, 0x1

    .line 2497
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private L()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 2501
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2502
    :cond_0
    const/4 v0, 0x0

    .line 2546
    :cond_1
    :goto_0
    return-object v0

    .line 2505
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2506
    const-string v1, "account_facebook"

    .line 2508
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/ad;->getAccountFacebook(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2509
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2510
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 2514
    :cond_3
    :goto_1
    const-string v1, "account_twitter"

    .line 2516
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/ad;->getAccountTwitter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2517
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2518
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 2522
    :cond_4
    :goto_2
    const-string v1, "account_weibo"

    .line 2524
    :try_start_2
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/ad;->getAccountWeibo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2525
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 2526
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2530
    :cond_5
    :goto_3
    const-string v1, "account_weixin"

    .line 2532
    :try_start_3
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/ad;->getAccountWeixin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2533
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2534
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 2538
    :cond_6
    :goto_4
    const-string v1, "account_renren"

    .line 2540
    :try_start_4
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/ad;->getAccountRenren(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2541
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2542
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 2544
    :catch_0
    move-exception v1

    goto :goto_0

    .line 2536
    :catch_1
    move-exception v1

    goto :goto_4

    .line 2528
    :catch_2
    move-exception v1

    goto :goto_3

    .line 2520
    :catch_3
    move-exception v1

    goto :goto_2

    .line 2512
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private M()Z
    .locals 9

    .prologue
    .line 2692
    :try_start_0
    invoke-static {p0}, Lcom/ss/android/common/c/b;->a(Lcom/ss/android/common/c/b$a;)V

    .line 2693
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/c/b;->a(Landroid/content/Context;)V

    .line 2694
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONObject;Landroid/content/Context;)Z

    move-result v0

    .line 2695
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2696
    invoke-static {}, Lcom/ss/android/common/c/d;->a()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    .line 2698
    :cond_0
    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->k:Z

    .line 2699
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->z()V

    .line 2701
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v0

    .line 2702
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/common/applog/i;->b(J)Lcom/ss/android/common/applog/z;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    .line 2703
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/z;)V

    .line 2704
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->J()V

    .line 2705
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-eqz v0, :cond_1

    .line 2706
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start with last session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-object v2, v2, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    new-instance v0, Lcom/ss/android/common/applog/s;

    invoke-direct {v0}, Lcom/ss/android/common/applog/s;-><init>()V

    .line 2708
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v2, v1, Lcom/ss/android/common/applog/z;->a:J

    iput-wide v2, v0, Lcom/ss/android/common/applog/s;->a:J

    .line 2709
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/t;)V

    .line 2711
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 2712
    new-instance v0, Lcom/ss/android/common/applog/v;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v5, Lcom/ss/android/common/applog/AppLog;->d:Lcom/ss/android/common/applog/AppLog$e;

    iget-object v6, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-object v7, p0, Lcom/ss/android/common/applog/AppLog;->aI:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v8, p0, Lcom/ss/android/common/applog/AppLog;->aJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct/range {v0 .. v8}, Lcom/ss/android/common/applog/v;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/LinkedList;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/ss/android/common/applog/AppLog$e;Lcom/ss/android/common/applog/z;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    .line 2714
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->ap:J

    invoke-virtual {v0, v2, v3}, Lcom/ss/android/common/applog/v;->a(J)V

    .line 2715
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    iget v1, p0, Lcom/ss/android/common/applog/AppLog;->aq:I

    invoke-virtual {v0, v1}, Lcom/ss/android/common/applog/v;->a(I)V

    .line 2716
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/v;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2717
    const/4 v0, 0x1

    .line 2720
    :goto_0
    return v0

    .line 2718
    :catch_0
    move-exception v0

    .line 2719
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to start LogReaper: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private N()V
    .locals 6

    .prologue
    const-wide/32 v0, 0x927c0

    .line 2726
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2727
    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->A:J

    cmp-long v4, v4, v0

    if-gez v4, :cond_1

    .line 2728
    :goto_0
    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->B:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 2729
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2730
    invoke-static {}, Lcom/ss/android/common/c/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2767
    :cond_0
    :goto_1
    return-void

    .line 2727
    :cond_1
    iget-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->A:J

    goto :goto_0

    .line 2732
    :cond_2
    iput-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->B:J

    .line 2733
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v2, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 2734
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "user_unique_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2735
    const-string v1, "user_unique_id"

    invoke-static {}, Lcom/ss/android/common/c/b;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2737
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 2738
    const-string v2, "header"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2739
    const-string v0, "magic_tag"

    const-string v2, "ss_app_log"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2740
    const-string v0, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2742
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2743
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->h()Ljava/lang/String;

    move-result-object v1

    .line 2745
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2746
    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->n()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_4

    .line 2748
    :try_start_1
    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v0, v3, v4}, Lcom/ss/android/common/applog/aa;->sendEncryptLog(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2755
    :goto_2
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 2757
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2758
    const-string v0, "success"

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2759
    new-instance v0, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v2, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->AB_CONFIG_UPDATE:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v0, v2}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 2760
    iput-object v1, v0, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 2761
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 2764
    :catch_0
    move-exception v0

    .line 2765
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 2749
    :catch_1
    move-exception v0

    .line 2750
    :try_start_3
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 2753
    :cond_4
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private O()V
    .locals 0

    .prologue
    .line 2834
    invoke-static {p0}, Lcom/ss/android/common/c/b;->a(Lcom/ss/android/common/c/b$b;)V

    .line 2835
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 497
    :try_start_0
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 498
    if-eqz v0, :cond_0

    .line 499
    invoke-direct {v0, p0}, Lcom/ss/android/common/applog/AppLog;->e(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 500
    if-eqz v0, :cond_0

    move-object p1, v0

    .line 507
    :cond_0
    :goto_0
    return-object p1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 512
    :try_start_0
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 513
    if-eqz v0, :cond_0

    .line 514
    if-nez p2, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-object p1

    .line 516
    :cond_1
    invoke-direct {v0, p0}, Lcom/ss/android/common/applog/AppLog;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 522
    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 987
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->Q:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 660
    invoke-static {p0}, Lcom/ss/android/common/applog/v;->a(Landroid/content/Context;)V

    .line 661
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 895
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    :goto_0
    return-void

    .line 899
    :cond_0
    sput-object p1, Lcom/ss/android/common/applog/AppLog;->g:Ljava/lang/String;

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->i:Ljava/lang/String;

    .line 901
    new-instance v0, Lcom/ss/android/common/applog/AppLog$c;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/common/applog/AppLog$c;-><init>(Ljava/lang/String;I)V

    .line 902
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getInstance()Lcom/ss/android/common/applog/AppLog;

    move-result-object v1

    .line 903
    if-eqz v1, :cond_1

    .line 904
    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$c;)V

    .line 906
    :cond_1
    invoke-static {}, Lcom/ss/android/common/c/b;->j()V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v4, 0x0

    .line 861
    const-string v1, "umeng"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    invoke-static/range {v0 .. v9}, Lcom/ss/android/common/applog/AppLog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 862
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 834
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 835
    if-nez v0, :cond_1

    .line 836
    const-string v0, "AppLog"

    const-string v1, "null context when onEvent"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 841
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    .line 842
    invoke-virtual/range {v0 .. v9}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/ss/android/common/applog/AppLog;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->O()V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 552
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 554
    :cond_1
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 555
    if-eqz v0, :cond_0

    .line 556
    invoke-virtual {v0, p0}, Lcom/ss/android/common/applog/AppLog;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ZZZ)V
    .locals 12

    .prologue
    .line 2576
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->az:Z

    if-eqz v0, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return-void

    .line 2578
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 2580
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "device_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2581
    invoke-static {v0}, Lcom/ss/android/common/applog/aa;->isBadId(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "install_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2584
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2586
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2587
    const-wide/32 v4, 0x1499700

    .line 2588
    const-wide/32 v2, 0xea60

    .line 2589
    iget v0, p0, Lcom/ss/android/common/applog/AppLog;->aA:I

    sget v1, Lcom/ss/android/common/applog/AppLog;->V:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    .line 2590
    :goto_1
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->aB:Z

    if-nez v1, :cond_2

    iget-wide v8, p0, Lcom/ss/android/common/applog/AppLog;->aa:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gez v1, :cond_2

    if-eqz v0, :cond_2

    .line 2592
    const-wide/32 v4, 0x2932e00

    .line 2594
    :cond_2
    if-eqz v0, :cond_f

    .line 2595
    const-wide/32 v0, 0x2bf20

    .line 2598
    :goto_2
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->K()Z

    move-result v2

    .line 2599
    if-nez v2, :cond_3

    .line 2600
    if-nez p2, :cond_9

    .line 2601
    iget-wide v8, p0, Lcom/ss/android/common/applog/AppLog;->ax:J

    sub-long v8, v6, v8

    cmp-long v3, v8, v4

    if-ltz v3, :cond_0

    .line 2603
    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ay:J

    sub-long v4, v6, v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_0

    .line 2612
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2614
    iput-wide v6, p0, Lcom/ss/android/common/applog/AppLog;->ay:J

    .line 2615
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->az:Z

    .line 2616
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 2617
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v1}, Lcom/ss/android/common/c/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2618
    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2619
    const-string v3, "user_agent"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2621
    :cond_4
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 2622
    const-string v1, "magic_tag"

    const-string v4, "ss_app_log"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2623
    const-string v1, "header"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2624
    const-string v0, "_gen_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 2625
    const/4 v0, 0x0

    .line 2626
    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    sub-long v4, v6, v4

    const-wide/32 v6, 0x2932e00

    cmp-long v1, v4, v6

    if-gtz v1, :cond_5

    if-eqz v2, :cond_e

    .line 2627
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->B()V

    .line 2628
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->packJsonObject(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 2630
    :goto_3
    if-eqz v2, :cond_a

    const/4 v0, 0x1

    move v1, v0

    .line 2631
    :goto_4
    if-eqz v2, :cond_6

    .line 2632
    const-string v0, "fingerprint"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2634
    :cond_6
    :try_start_1
    sget-boolean v0, Lcom/ss/android/common/applog/g;->a:Z

    if-eqz v0, :cond_7

    .line 2635
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/ss/android/common/applog/g;->b(Z)V

    .line 2636
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->e()Z

    move-result v0

    if-nez v0, :cond_b

    .line 2637
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2654
    :cond_7
    :goto_5
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2655
    if-eqz p1, :cond_d

    .line 2656
    new-instance v2, Lcom/ss/android/common/applog/c;

    invoke-direct {v2, p0, v0, v1, p3}, Lcom/ss/android/common/applog/c;-><init>(Lcom/ss/android/common/applog/AppLog;Ljava/lang/String;ZZ)V

    .line 2662
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2666
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2589
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 2606
    :cond_9
    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ay:J

    iget-wide v8, p0, Lcom/ss/android/common/applog/AppLog;->ax:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ay:J

    sub-long v4, v6, v4

    cmp-long v0, v4, v0

    if-gez v0, :cond_3

    goto/16 :goto_0

    .line 2630
    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4

    .line 2640
    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2641
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 2646
    :goto_6
    if-eqz v0, :cond_7

    .line 2647
    const-string v2, "app_install_info"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    .line 2651
    :catch_1
    move-exception v0

    goto :goto_5

    .line 2643
    :cond_c
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 2644
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/ss/android/common/applog/g;->b(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 2664
    :cond_d
    :try_start_4
    invoke-virtual {p0, v0, v1, p3}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/lang/String;ZZ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :cond_e
    move-object v2, v0

    goto/16 :goto_3

    :cond_f
    move-wide v0, v2

    goto/16 :goto_2
.end method

.method private a(Lorg/json/JSONObject;Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 954
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 955
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->u:Z

    if-eqz v1, :cond_0

    .line 956
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 958
    :cond_0
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->v:Z

    if-eqz v1, :cond_1

    .line 959
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 961
    :cond_1
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->w:Z

    if-eqz v1, :cond_2

    .line 962
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 964
    :cond_2
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->x:Z

    if-eqz v1, :cond_3

    .line 965
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 967
    :cond_3
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->y:Z

    if-eqz v1, :cond_4

    .line 968
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 970
    :cond_4
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->z:Z

    if-eqz v1, :cond_5

    .line 971
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 973
    :cond_5
    const-string v1, "push_sdk"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 977
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/ss/android/common/applog/aa;->getAliyunUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 978
    const-string v0, "aliyun_uuid"

    invoke-static {}, Lcom/ss/android/common/applog/aa;->getAliyunUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 983
    :cond_6
    :goto_1
    invoke-static {p2, p1}, Lcom/ss/android/common/c/e;->a(Landroid/content/Context;Lorg/json/JSONObject;)Z

    move-result v0

    return v0

    .line 980
    :catch_0
    move-exception v0

    goto :goto_1

    .line 974
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1892
    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1900
    :cond_0
    :goto_0
    return p2

    .line 1894
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 1895
    if-lt v1, v0, :cond_2

    move p2, v0

    .line 1896
    goto :goto_0

    .line 1897
    :cond_2
    if-nez v1, :cond_3

    .line 1898
    const/4 p2, 0x0

    goto :goto_0

    .line 1900
    :cond_3
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method public static activeUser(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 2901
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->K:Z

    .line 2902
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->c(Landroid/content/Context;)V

    .line 2903
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 991
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->A()V

    .line 992
    invoke-static {p1}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->h()V

    .line 993
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->G()V

    .line 994
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 919
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    :goto_0
    return-void

    .line 923
    :cond_0
    new-instance v0, Lcom/ss/android/common/applog/AppLog$c;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/common/applog/AppLog$c;-><init>(Ljava/lang/String;I)V

    .line 924
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getInstance()Lcom/ss/android/common/applog/AppLog;

    move-result-object v1

    .line 925
    if-eqz v1, :cond_1

    .line 926
    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/AppLog;->b(Lcom/ss/android/common/applog/AppLog$c;)V

    .line 928
    :cond_1
    invoke-static {}, Lcom/ss/android/common/c/b;->i()V

    goto :goto_0
.end method

.method static b(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 1850
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    if-eqz v0, :cond_0

    .line 1851
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    iget-object v0, v0, Lcom/ss/android/common/applog/AppLog;->aN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    .line 1853
    :try_start_0
    const-string v2, "tea_event_index"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1857
    :goto_0
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    invoke-direct {v0}, Lcom/ss/android/common/applog/AppLog;->H()V

    .line 1859
    :cond_0
    return-void

    .line 1854
    :catch_0
    move-exception v0

    .line 1855
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/ss/android/common/applog/AppLog;)Z
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->M()Z

    move-result v0

    return v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 2906
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->L:Z

    if-nez v0, :cond_2

    .line 2907
    const-class v1, Lcom/ss/android/common/applog/AppLog;

    monitor-enter v1

    .line 2908
    :try_start_0
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->L:Z

    if-nez v0, :cond_1

    .line 2909
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->M:Z

    .line 2910
    monitor-exit v1

    .line 2921
    :cond_0
    :goto_0
    return-void

    .line 2912
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2914
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->M:Z

    .line 2915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2916
    sget-wide v2, Lcom/ss/android/common/applog/AppLog;->N:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xdbba0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {p0}, Lcom/bytedance/common/utility/NetworkUtils;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2919
    sput-wide v0, Lcom/ss/android/common/applog/AppLog;->N:J

    .line 2920
    new-instance v0, Lcom/ss/android/common/a/a$a;

    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ss/android/common/a/a$a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ss/android/common/a/a$a;->start()V

    goto :goto_0

    .line 2912
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1433
    const-string v0, "app_language"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1434
    const-string v1, "app_region"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1435
    invoke-direct {p0, v0}, Lcom/ss/android/common/applog/AppLog;->g(Ljava/lang/String;)Z

    move-result v0

    .line 1436
    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/ss/android/common/applog/AppLog;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1438
    :goto_0
    if-eqz v0, :cond_1

    .line 1439
    invoke-static {}, Lcom/ss/android/common/c/b;->k()V

    .line 1440
    const-string v0, "AppLog"

    const-string v1, "updateDeviceInfo call device_register"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_1
    return-void

    .line 1436
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/ss/android/common/applog/AppLog;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->aV:Z

    return v0
.end method

.method static synthetic d(Lcom/ss/android/common/applog/AppLog;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    return-wide v0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1513
    if-nez p1, :cond_0

    .line 1556
    :goto_0
    return-void

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/applog/aa;->isBadId(Ljava/lang/String;)Z

    move-result v1

    .line 1516
    const-string v0, "device_id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1517
    const-string v0, "install_id"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1518
    const-string v0, "ssid"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1519
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1521
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v5, "user_unique_id"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1526
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1528
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v5, "device_id"

    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1533
    :cond_2
    :goto_2
    invoke-static {v3}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1535
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "install_id"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1540
    :cond_3
    :goto_3
    invoke-static {v4}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1542
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "ssid"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1547
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v0, :cond_5

    .line 1549
    :try_start_4
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1550
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v2, v0}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1555
    :cond_5
    :goto_5
    invoke-direct {p0, v6, v6, v1}, Lcom/ss/android/common/applog/AppLog;->a(ZZZ)V

    goto :goto_0

    .line 1522
    :catch_0
    move-exception v0

    .line 1523
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 1529
    :catch_1
    move-exception v0

    .line 1530
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1536
    :catch_2
    move-exception v0

    .line 1537
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 1543
    :catch_3
    move-exception v0

    .line 1544
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 1551
    :catch_4
    move-exception v0

    .line 1552
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5
.end method

.method private e(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 528
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ae:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 536
    :cond_0
    :goto_0
    return-object v0

    .line 531
    :cond_1
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->J:Ljava/lang/Object;

    monitor-enter v1

    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ae:Lorg/json/JSONObject;

    const-string v3, "ab_config"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 533
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 533
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e(Lcom/ss/android/common/applog/AppLog;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->N()V

    return-void
.end method

.method static f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/2/app_log/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1411
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1430
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v0, :cond_0

    .line 1415
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "google_aid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1416
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "google_aid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1418
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v0, :cond_2

    .line 1419
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v2, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1420
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V

    .line 1422
    :cond_2
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    .line 1423
    invoke-static {}, Lcom/ss/android/common/applog/e;->getSPName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 1422
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1424
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "google_aid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1426
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/2/log_settings/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1445
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return v0

    .line 1449
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "app_language"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1450
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "app_language"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1452
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v1, :cond_2

    .line 1453
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v2, v1}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V

    .line 1456
    :cond_2
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    .line 1457
    invoke-static {}, Lcom/ss/android/common/applog/e;->getSPName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1456
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1458
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_language"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1460
    const/4 v0, 0x1

    goto :goto_0

    .line 1462
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getCurrentTotalAmount()J
    .locals 2

    .prologue
    .line 578
    sget-wide v0, Lcom/ss/android/common/applog/AppLog;->aM:J

    return-wide v0
.end method

.method public static getHttpMonitorPort()I
    .locals 1

    .prologue
    .line 721
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 722
    if-eqz v0, :cond_0

    .line 723
    iget v0, v0, Lcom/ss/android/common/applog/AppLog;->as:I

    .line 725
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2000

    goto :goto_0
.end method

.method public static getInstallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 682
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 683
    if-eqz v0, :cond_0

    .line 684
    invoke-static {}, Lcom/ss/android/common/c/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 686
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/ss/android/common/applog/AppLog;
    .locals 1

    .prologue
    .line 949
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    return-object v0
.end method

.method public static getLastActiveTime()J
    .locals 2

    .prologue
    .line 712
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 713
    if-eqz v0, :cond_0

    .line 714
    invoke-direct {v0}, Lcom/ss/android/common/applog/AppLog;->F()J

    move-result-wide v0

    .line 716
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 632
    const-string v0, "2.3.0"

    return-object v0
.end method

.method public static getSSIDs(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    const/4 v0, 0x0

    .line 665
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->R:Ljava/lang/Object;

    monitor-enter v1

    .line 666
    :try_start_0
    sget-boolean v2, Lcom/ss/android/common/applog/AppLog;->b:Z

    if-nez v2, :cond_0

    .line 667
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 668
    :cond_0
    monitor-exit v1

    .line 669
    if-nez v0, :cond_1

    .line 675
    :goto_0
    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 671
    :cond_1
    invoke-static {p0}, Lcom/ss/android/common/c/b;->a(Ljava/util/Map;)V

    .line 673
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 674
    const-string v1, "user_id"

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getServerDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 691
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 692
    if-eqz v0, :cond_0

    .line 693
    invoke-static {}, Lcom/ss/android/common/c/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 695
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getServerSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 700
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 701
    if-eqz v0, :cond_0

    .line 702
    invoke-static {}, Lcom/ss/android/common/c/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 704
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getServerDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    .line 620
    :cond_0
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    return-object v0
.end method

.method static h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/2/ab_test_config/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1470
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return v0

    .line 1474
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "app_region"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1475
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1476
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "app_region"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1477
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v1, :cond_2

    .line 1478
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1479
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v2, v1}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V

    .line 1481
    :cond_2
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    .line 1482
    invoke-static {}, Lcom/ss/android/common/applog/e;->getSPName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1481
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1483
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "app_region"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    const/4 v0, 0x1

    goto :goto_0

    .line 1487
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static i()Ljava/lang/String;
    .locals 2

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/2/app_log_exception/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1496
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1511
    :cond_0
    :goto_0
    return-void

    .line 1498
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v1, "header_custom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1499
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1500
    const-string v1, "ab_server_version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1501
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1502
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v0, :cond_0

    .line 1504
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "ab_server_version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1505
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v2, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1506
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1507
    :catch_0
    move-exception v0

    .line 1508
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;ZLcom/ss/android/common/AppContext;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 477
    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 478
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applog init context is not null and AppContext is not null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_1
    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->aF:Z

    .line 480
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 481
    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->aB:Z

    .line 483
    :cond_2
    sget-boolean v1, Lcom/ss/android/common/applog/AppLog;->aB:Z

    invoke-static {v1}, Lcom/ss/android/common/c/b;->a(Z)V

    .line 484
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->R:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    :try_start_0
    sget-object v2, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    if-nez v2, :cond_3

    .line 486
    new-instance v2, Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/ss/android/common/applog/AppLog;-><init>(Landroid/content/Context;Lcom/ss/android/common/AppContext;)V

    sput-object v2, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 487
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 488
    const-string v2, "Process"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AppLog = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    if-nez p1, :cond_4

    :goto_0
    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->K:Z

    .line 493
    return-void

    .line 491
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 492
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service/2/app_alert_check/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static k()Lorg/json/JSONObject;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 541
    :try_start_0
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 542
    if-eqz v1, :cond_0

    .line 543
    invoke-direct {v1}, Lcom/ss/android/common/applog/AppLog;->E()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 548
    :cond_0
    :goto_0
    return-object v0

    .line 545
    :catch_0
    move-exception v1

    .line 546
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static m()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 730
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 731
    if-nez v1, :cond_1

    .line 738
    :cond_0
    :goto_0
    return v0

    .line 734
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 738
    iget-object v1, v1, Lcom/ss/android/common/applog/AppLog;->p:Lcom/ss/android/common/applog/AppLog$c;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static n()Z
    .locals 1

    .prologue
    .line 816
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->aG:Z

    if-eqz v0, :cond_0

    .line 817
    const/4 v0, 0x0

    .line 819
    :goto_0
    return v0

    .line 818
    :cond_0
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->e:Lcom/ss/android/common/applog/AppLog$d;

    .line 819
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/ss/android/common/applog/AppLog$d;->a()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static o()Z
    .locals 1

    .prologue
    .line 823
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->e:Lcom/ss/android/common/applog/AppLog$d;

    .line 824
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/common/applog/AppLog$d;->b()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onActivityCreate(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 935
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 936
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->f:Ljava/lang/String;

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->h:Ljava/lang/String;

    .line 939
    :cond_0
    return-void
.end method

.method public static onActivityCreate(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 942
    sput-object p0, Lcom/ss/android/common/applog/AppLog;->f:Ljava/lang/String;

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ss/android/common/applog/AppLog;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->h:Ljava/lang/String;

    .line 944
    return-void
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 10

    .prologue
    .line 847
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lcom/ss/android/common/applog/AppLog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V

    .line 848
    return-void
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 913
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/ss/android/common/applog/AppLog;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 916
    :cond_0
    return-void
.end method

.method public static onQuit()V
    .locals 2

    .prologue
    .line 872
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->R:Ljava/lang/Object;

    monitor-enter v1

    .line 873
    :try_start_0
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->b:Z

    if-eqz v0, :cond_0

    .line 874
    monitor-exit v1

    .line 879
    :goto_0
    return-void

    .line 875
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->b:Z

    .line 876
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    if-eqz v0, :cond_1

    .line 877
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/AppLog;->r()V

    .line 878
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 885
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 886
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 888
    :cond_0
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->K:Z

    if-nez v0, :cond_1

    .line 890
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->c(Landroid/content/Context;)V

    .line 892
    :cond_1
    return-void
.end method

.method static p()Z
    .locals 1

    .prologue
    .line 828
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->e:Lcom/ss/android/common/applog/AppLog$d;

    .line 829
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/ss/android/common/applog/AppLog$d;->c()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static packJsonObject(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2550
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2551
    :cond_0
    const/4 v0, 0x0

    .line 2553
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->packString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static packString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2557
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2559
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 2560
    array-length v2, v1

    .line 2561
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 2562
    aget-byte v3, v1, v0

    xor-int/lit8 v3, v3, -0x63

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 2561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2564
    :cond_0
    const/16 v0, 0xa

    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2568
    :goto_1
    return-object v0

    .line 2565
    :catch_0
    move-exception v0

    .line 2568
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 774
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 779
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 780
    invoke-static {p0}, Lcom/ss/android/common/c/c;->b(Ljava/lang/String;)V

    .line 782
    :try_start_0
    const-string v0, "app_language"

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 789
    invoke-static {p1}, Lcom/ss/android/common/c/c;->c(Ljava/lang/String;)V

    .line 791
    :try_start_1
    const-string v0, "app_region"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 797
    :cond_3
    :goto_2
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 798
    if-eqz v0, :cond_0

    .line 799
    new-instance v2, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v3, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->UPDATE_APP_LANGUAGE_REGION:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v2, v3}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 800
    iput-object v1, v2, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 801
    invoke-virtual {v0, v2}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    goto :goto_0

    .line 783
    :catch_0
    move-exception v0

    .line 784
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 792
    :catch_1
    move-exception v0

    .line 793
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public static setConfigUpdateListener(Lcom/ss/android/common/applog/AppLog$ConfigUpdateListener;)V
    .locals 1

    .prologue
    .line 2053
    if-nez p0, :cond_0

    .line 2054
    const/4 v0, 0x0

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->aW:Ljava/lang/ref/WeakReference;

    .line 2058
    :goto_0
    return-void

    .line 2056
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/ss/android/common/applog/AppLog;->aW:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static setDebug(Z)V
    .locals 1

    .prologue
    .line 806
    sput-boolean p0, Lcom/ss/android/common/applog/AppLog;->aG:Z

    .line 807
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/ss/android/common/c/a;->b(Z)V

    .line 808
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->aG:Z

    if-eqz v0, :cond_1

    .line 809
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/bytedance/common/utility/Logger;->setLogLevel(I)V

    .line 813
    :goto_1
    return-void

    .line 807
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 811
    :cond_1
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/bytedance/common/utility/Logger;->setLogLevel(I)V

    goto :goto_1
.end method

.method public static setGoogleAId(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 754
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    invoke-static {p0}, Lcom/ss/android/common/c/c;->a(Ljava/lang/String;)V

    .line 757
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 758
    if-eqz v0, :cond_0

    .line 759
    new-instance v1, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v2, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->UPDATE_GOOGLE_AID:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v1, v2}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 760
    iput-object p0, v1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 761
    invoke-virtual {v0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    goto :goto_0
.end method

.method public static setHeaderInfo(Ljava/util/Map;)V
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
    .line 581
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 584
    if-eqz v0, :cond_2

    .line 585
    invoke-virtual {v0, p0}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/util/Map;)V

    .line 591
    :goto_1
    invoke-static {p0}, Lcom/ss/android/common/c/d;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 587
    :cond_2
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->aL:Ljava/util/Map;

    monitor-enter v1

    .line 588
    :try_start_0
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aL:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 589
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setUserId(J)V
    .locals 2

    .prologue
    .line 742
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 743
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 744
    if-eqz v0, :cond_0

    .line 745
    invoke-direct {v0}, Lcom/ss/android/common/applog/AppLog;->J()V

    .line 747
    :cond_0
    return-void
.end method

.method public static setUserUniqueID(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 600
    invoke-static {p0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->getServerDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 602
    :cond_0
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->S:Lcom/ss/android/common/applog/AppLog;

    .line 603
    if-eqz v0, :cond_1

    .line 604
    invoke-virtual {v0, p0}, Lcom/ss/android/common/applog/AppLog;->c(Ljava/lang/String;)V

    .line 607
    :goto_0
    invoke-static {p0}, Lcom/ss/android/common/c/d;->a(Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/ss/android/common/c/b;->b()V

    .line 609
    return-void

    .line 606
    :cond_1
    sput-object p0, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    goto :goto_0
.end method

.method public static tryWaitDeviceInit()V
    .locals 0

    .prologue
    .line 868
    invoke-static {}, Lcom/ss/android/common/c/b;->g()V

    .line 869
    return-void
.end method


# virtual methods
.method A()V
    .locals 8

    .prologue
    .line 2211
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2212
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/ss/android/common/applog/AppLog;->U:Ljava/lang/String;

    .line 2213
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/ss/android/common/applog/AppLog;->V:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2219
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v3, "applog_stats"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 2221
    const-string v2, "app_log_last_config_version"

    const/4 v3, 0x0

    invoke-interface {v4, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/ss/android/common/applog/AppLog;->aA:I

    .line 2222
    iget v2, p0, Lcom/ss/android/common/applog/AppLog;->aA:I

    sget v3, Lcom/ss/android/common/applog/AppLog;->V:I

    if-ne v2, v3, :cond_0

    .line 2223
    const-string v2, "app_log_last_config_time"

    const-wide/16 v6, 0x0

    invoke-interface {v4, v2, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2224
    cmp-long v5, v2, v0

    if-lez v5, :cond_2

    .line 2227
    :goto_1
    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->ax:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2230
    :cond_0
    :try_start_2
    const-string v0, "allow_push_list"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2231
    if-eqz v0, :cond_1

    .line 2232
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->R:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2233
    :try_start_3
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ak:Ljava/util/HashSet;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/util/HashSet;Lorg/json/JSONArray;)V

    .line 2234
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2239
    :cond_1
    :goto_2
    :try_start_4
    const-string v0, "allow_old_image_sample"

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->al:Z

    .line 2243
    :goto_3
    return-void

    .line 2214
    :catch_0
    move-exception v0

    .line 2215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2240
    :catch_1
    move-exception v0

    goto :goto_3

    .line 2234
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2236
    :catch_2
    move-exception v0

    .line 2237
    :try_start_7
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load allow_push_list exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method B()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/16 v7, 0x1e

    const/4 v6, 0x4

    .line 2375
    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    .line 2376
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2488
    :cond_0
    :goto_0
    return-void

    .line 2380
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 2383
    :goto_1
    if-eqz v2, :cond_0

    .line 2386
    const-string v0, "m_phone_number"

    .line 2387
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2389
    :try_start_1
    invoke-static {v2}, Lcom/bytedance/common/utility/a/a;->a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    .line 2390
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2391
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 2399
    :cond_2
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 2400
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    .line 2401
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    const-string v5, "raw_phone_number"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4

    .line 2412
    :cond_3
    :goto_3
    const-string v0, "sim_serial"

    .line 2413
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2415
    :try_start_3
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v4

    .line 2416
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_4

    .line 2417
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_c

    .line 2421
    :cond_4
    :goto_4
    const-string v0, "subscribe_id"

    .line 2422
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2424
    :try_start_4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 2425
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_5

    .line 2426
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b

    .line 2430
    :cond_5
    :goto_5
    const-string v0, "sim_op"

    .line 2431
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2433
    :try_start_5
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    .line 2434
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_6

    .line 2435
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_a

    .line 2439
    :cond_6
    :goto_6
    const-string v0, "net_op"

    .line 2440
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2442
    :try_start_6
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    .line 2443
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v7, :cond_7

    .line 2444
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_9

    .line 2448
    :cond_7
    :goto_7
    const-string v0, "phone_type"

    .line 2449
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2451
    :try_start_7
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 2455
    :cond_8
    :goto_8
    const-string v0, "net_type"

    .line 2456
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2458
    :try_start_8
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 2463
    :cond_9
    :goto_9
    const-string v0, "third_part_account"

    .line 2465
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2466
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->L()Lorg/json/JSONObject;

    move-result-object v2

    .line 2468
    if-eqz v2, :cond_a

    .line 2469
    :try_start_9
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 2475
    :cond_a
    :goto_a
    const-string v2, "wifi_bssid"

    .line 2476
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2479
    :try_start_a
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aE:Lcom/ss/android/common/applog/af;

    if-eqz v0, :cond_c

    .line 2480
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aE:Lcom/ss/android/common/applog/af;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/af;->c()Ljava/lang/String;

    move-result-object v0

    .line 2482
    :goto_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2483
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 2485
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2381
    :catch_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_1

    .line 2392
    :catch_2
    move-exception v0

    .line 2394
    :try_start_b
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    const-string v5, "no_m_phone"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_2

    .line 2395
    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 2403
    :cond_b
    :try_start_c
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    const-string v4, "no_raw_phone"

    const-string v5, "empty"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_3

    .line 2405
    :catch_4
    move-exception v0

    .line 2407
    :try_start_d
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->af:Lorg/json/JSONObject;

    const-string v5, "no_raw_phone"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    goto/16 :goto_3

    .line 2408
    :catch_5
    move-exception v0

    goto/16 :goto_3

    .line 2471
    :catch_6
    move-exception v0

    goto :goto_a

    .line 2459
    :catch_7
    move-exception v0

    goto/16 :goto_9

    .line 2452
    :catch_8
    move-exception v0

    goto/16 :goto_8

    .line 2445
    :catch_9
    move-exception v0

    goto/16 :goto_7

    .line 2436
    :catch_a
    move-exception v0

    goto/16 :goto_6

    .line 2427
    :catch_b
    move-exception v0

    goto/16 :goto_5

    .line 2418
    :catch_c
    move-exception v0

    goto/16 :goto_4

    :cond_c
    move-object v0, v1

    goto :goto_b
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Lorg/json/JSONArray;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2076
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2077
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 2078
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 2079
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 2080
    if-lez v3, :cond_0

    .line 2081
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2078
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2083
    :cond_1
    return-object v1
.end method

.method a(JZ)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1743
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v3

    .line 1744
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-boolean v0, v0, Lcom/ss/android/common/applog/z;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v4, v0, Lcom/ss/android/common/applog/z;->h:J

    sub-long v4, p1, v4

    iget-wide v6, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-boolean v0, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    :cond_1
    move v0, v2

    .line 1747
    :goto_0
    if-nez v0, :cond_4

    .line 1748
    if-nez p3, :cond_2

    .line 1749
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iput-boolean v2, v0, Lcom/ss/android/common/applog/z;->k:Z

    .line 1750
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iput-wide p1, v0, Lcom/ss/android/common/applog/z;->h:J

    .line 1796
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    .line 1744
    goto :goto_0

    .line 1754
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->t()V

    .line 1755
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    .line 1757
    new-instance v4, Lcom/ss/android/common/applog/z;

    invoke-direct {v4}, Lcom/ss/android/common/applog/z;-><init>()V

    .line 1758
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->x()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    .line 1759
    iput-wide p1, v4, Lcom/ss/android/common/applog/z;->c:J

    .line 1760
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->aN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/ss/android/common/applog/z;->d:J

    .line 1761
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->H()V

    .line 1762
    iget-wide v6, v4, Lcom/ss/android/common/applog/z;->c:J

    iput-wide v6, v4, Lcom/ss/android/common/applog/z;->h:J

    .line 1763
    iput v1, v4, Lcom/ss/android/common/applog/z;->e:I

    .line 1764
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->U:Ljava/lang/String;

    iput-object v1, v4, Lcom/ss/android/common/applog/z;->f:Ljava/lang/String;

    .line 1765
    sget v1, Lcom/ss/android/common/applog/AppLog;->V:I

    iput v1, v4, Lcom/ss/android/common/applog/z;->g:I

    .line 1766
    iput-boolean p3, v4, Lcom/ss/android/common/applog/z;->i:Z

    .line 1767
    if-nez p3, :cond_5

    .line 1768
    iput-boolean v2, v4, Lcom/ss/android/common/applog/z;->k:Z

    .line 1770
    :cond_5
    invoke-virtual {v3, v4}, Lcom/ss/android/common/applog/i;->a(Lcom/ss/android/common/applog/z;)J

    move-result-wide v2

    .line 1771
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-lez v1, :cond_b

    .line 1772
    iput-wide v2, v4, Lcom/ss/android/common/applog/z;->a:J

    .line 1773
    iput-object v4, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    .line 1774
    const-string v1, "AppLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start new session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, v4, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/bytedance/common/utility/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1775
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->d:Lcom/ss/android/common/applog/AppLog$e;

    .line 1776
    if-eqz v1, :cond_6

    .line 1777
    invoke-interface {v1, v2, v3}, Lcom/ss/android/common/applog/AppLog$e;->a(J)V

    .line 1782
    :cond_6
    :goto_2
    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-eqz v1, :cond_a

    .line 1783
    :cond_7
    new-instance v1, Lcom/ss/android/common/applog/u;

    invoke-direct {v1}, Lcom/ss/android/common/applog/u;-><init>()V

    .line 1784
    iput-object v0, v1, Lcom/ss/android/common/applog/u;->a:Lcom/ss/android/common/applog/z;

    .line 1785
    sget v0, Lcom/ss/android/common/applog/AppLog;->r:I

    if-gtz v0, :cond_8

    .line 1786
    const/4 v0, 0x6

    sput v0, Lcom/ss/android/common/applog/AppLog;->r:I

    .line 1788
    :cond_8
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-boolean v0, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-nez v0, :cond_9

    .line 1789
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iput-object v0, v1, Lcom/ss/android/common/applog/u;->b:Lcom/ss/android/common/applog/z;

    .line 1790
    :cond_9
    invoke-virtual {p0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/t;)V

    .line 1792
    :cond_a
    if-nez p3, :cond_2

    .line 1793
    sget-boolean v0, Lcom/ss/android/common/a;->a:Z

    if-eqz v0, :cond_2

    .line 1794
    invoke-virtual {p0, p3}, Lcom/ss/android/common/applog/AppLog;->a(Z)V

    goto/16 :goto_1

    .line 1780
    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    goto :goto_2
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 853
    invoke-static/range {p1 .. p9}, Lcom/ss/android/common/applog/AppLog;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 854
    return-void
.end method

.method a(Lcom/ss/android/common/applog/AppLog$a;)V
    .locals 3

    .prologue
    .line 1079
    if-nez p1, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1081
    :cond_0
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1082
    :try_start_0
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->b:Z

    if-eqz v0, :cond_1

    .line 1083
    monitor-exit v1

    goto :goto_0

    .line 1088
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1084
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_2

    .line 1085
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 1086
    :cond_2
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1087
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1088
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method a(Lcom/ss/android/common/applog/AppLog$c;)V
    .locals 5

    .prologue
    .line 1243
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->k:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->p:Lcom/ss/android/common/applog/AppLog$c;

    if-eqz v0, :cond_2

    .line 1246
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause not call on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->p:Lcom/ss/android/common/applog/AppLog$c;

    iget-object v2, v2, Lcom/ss/android/common/applog/AppLog$c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1249
    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aa:J

    .line 1250
    iput-object p1, p0, Lcom/ss/android/common/applog/AppLog;->p:Lcom/ss/android/common/applog/AppLog$c;

    .line 1251
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1252
    const-string v2, "AppLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/ss/android/common/applog/AppLog$c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_3
    new-instance v2, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v3, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->PAGE_START:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v2, v3}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 1254
    iput-wide v0, v2, Lcom/ss/android/common/applog/AppLog$a;->c:J

    .line 1255
    invoke-virtual {p0, v2}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    .line 1256
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->X:Lcom/ss/android/common/applog/a;

    if-eqz v0, :cond_4

    .line 1257
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->X:Lcom/ss/android/common/applog/a;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/a;->b()V

    .line 1259
    :cond_4
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->Y:Lcom/ss/android/common/applog/ae;

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->Y:Lcom/ss/android/common/applog/ae;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/ae;->a()V

    goto :goto_0
.end method

.method public a(Lcom/ss/android/common/applog/ae$b;)V
    .locals 3

    .prologue
    .line 1024
    if-nez p1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrafficWarning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->m()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1029
    iget v0, p0, Lcom/ss/android/common/applog/AppLog;->Z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1030
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->onQuit()V

    .line 1031
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 1036
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->Y:Lcom/ss/android/common/applog/ae;

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->Y:Lcom/ss/android/common/applog/ae;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/ae;->a()V

    goto :goto_0

    .line 1032
    :cond_3
    iget v0, p0, Lcom/ss/android/common/applog/AppLog;->Z:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1033
    const/4 v0, 0x0

    const-string v1, "traffic_warn"

    invoke-virtual {p1}, Lcom/ss/android/common/applog/ae$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/common/applog/AppLog;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method a(Lcom/ss/android/common/applog/p;)V
    .locals 4

    .prologue
    .line 1878
    iget-wide v0, p1, Lcom/ss/android/common/applog/p;->h:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/common/applog/AppLog;->a(JZ)V

    .line 1879
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-nez v0, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 1881
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v0, v0, Lcom/ss/android/common/applog/z;->a:J

    iput-wide v0, p1, Lcom/ss/android/common/applog/p;->i:J

    .line 1882
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->H()V

    .line 1883
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v0

    .line 1884
    invoke-virtual {v0, p1}, Lcom/ss/android/common/applog/i;->a(Lcom/ss/android/common/applog/p;)J

    move-result-wide v0

    .line 1885
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1886
    iput-wide v0, p1, Lcom/ss/android/common/applog/p;->a:J

    .line 1887
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->q()V

    goto :goto_0
.end method

.method a(Lcom/ss/android/common/applog/r;J)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 1805
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-nez v0, :cond_1

    .line 1806
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no session when onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ss/android/common/applog/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-boolean v0, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-eqz v0, :cond_2

    .line 1810
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "non-page session when onPause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ss/android/common/applog/r;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1813
    :cond_2
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iput-boolean v1, v0, Lcom/ss/android/common/applog/z;->k:Z

    .line 1814
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iput-wide p2, v0, Lcom/ss/android/common/applog/z;->h:J

    .line 1815
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v0, v0, Lcom/ss/android/common/applog/z;->a:J

    iput-wide v0, p1, Lcom/ss/android/common/applog/r;->c:J

    .line 1816
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v0

    .line 1817
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/common/applog/i;->a(Lcom/ss/android/common/applog/r;J)J

    .line 1819
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1820
    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->aT:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1821
    sget-boolean v2, Lcom/ss/android/common/a;->a:Z

    if-eqz v2, :cond_0

    .line 1823
    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->aT:J

    sub-long/2addr v0, v2

    .line 1824
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1825
    const-string v3, "session_no"

    iget v4, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1826
    const-string v3, "send_times"

    iget v4, p0, Lcom/ss/android/common/applog/AppLog;->aU:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ss/android/common/applog/AppLog;->aU:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1827
    const-string v3, "current_duration"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1828
    const-string v0, "session_start_time"

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v4, v1, Lcom/ss/android/common/applog/z;->c:J

    invoke-static {v4, v5}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aT:J

    .line 1830
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->aV:Z

    .line 1831
    const-string v0, "play_session"

    invoke-static {v0, v2}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1834
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method a(Lcom/ss/android/common/applog/t;)V
    .locals 3

    .prologue
    .line 1092
    if-nez p1, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1094
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aw:J

    .line 1095
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1096
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x7d0

    if-lt v0, v2, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 1098
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1099
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1100
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method a(Lcom/ss/android/common/applog/z;)V
    .locals 8

    .prologue
    const/4 v0, 0x5

    const/4 v2, 0x0

    .line 2247
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v3, "applog_stats"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2250
    const-string v1, "send_fingerprint_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    .line 2251
    iget-wide v6, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    cmp-long v1, v6, v4

    if-ltz v1, :cond_0

    .line 2252
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    .line 2253
    :cond_0
    const-string v1, "session_interval"

    const-wide/16 v4, 0x7530

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2254
    const-wide/16 v6, 0x3a98

    cmp-long v1, v4, v6

    if-ltz v1, :cond_1

    const-wide/32 v6, 0x493e0

    cmp-long v1, v4, v6

    if-gtz v1, :cond_1

    .line 2255
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    .line 2257
    :cond_1
    const-string v1, "batch_event_interval"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ap:J

    .line 2258
    const-string v1, "update_ab_config_interval"

    const-wide/16 v4, 0x0

    invoke-interface {v3, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->A:J

    .line 2259
    const-string v1, "send_launch_timely"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ss/android/common/applog/AppLog;->aq:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2262
    :try_start_1
    const-string v1, "fingerprint_codes"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2263
    if-eqz v1, :cond_2

    .line 2264
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object v1

    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2269
    :cond_2
    :goto_0
    :try_start_2
    const-string v1, "http_monitor_port"

    const/16 v4, 0x2000

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ss/android/common/applog/AppLog;->as:I

    .line 2270
    if-nez p1, :cond_4

    .line 2303
    :cond_3
    :goto_1
    return-void

    .line 2266
    :catch_0
    move-exception v1

    .line 2267
    const-string v4, "AppLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load fingerprint_codes exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2300
    :catch_1
    move-exception v0

    goto :goto_1

    .line 2272
    :cond_4
    const-string v1, "stats_value"

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2273
    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2275
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2276
    const-string v1, "session_id"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2277
    if-eqz v1, :cond_3

    iget-object v4, p1, Lcom/ss/android/common/applog/z;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2279
    const-string v1, "cnt_success"

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 2280
    const-string v4, "cnt_failure"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 2281
    if-lez v1, :cond_5

    .line 2282
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->au:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2283
    :cond_5
    if-lez v4, :cond_6

    .line 2284
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->av:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2285
    :cond_6
    const-string v1, "samples"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2287
    const-string v1, "samples"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 2288
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2289
    if-le v1, v0, :cond_8

    :goto_2
    move v1, v2

    .line 2291
    :goto_3
    if-ge v1, v0, :cond_3

    .line 2292
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 2293
    const-string v4, "url"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2294
    const-string v5, "networktype"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 2295
    const-string v5, "time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 2296
    const-string v5, "timestamp"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 2297
    invoke-static {v4}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v2

    if-eqz v2, :cond_7

    .line 2291
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 858
    invoke-static {p1, p2}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 859
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2848
    new-instance v1, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v0, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->DEVICE_ID_UPDATE:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v1, v0}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 2849
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2851
    :try_start_0
    const-string v2, "device_id"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2852
    const-string v2, "install_id"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2853
    const-string v2, "ssid"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2854
    iput-object v0, v1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2858
    :goto_0
    invoke-virtual {p0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    .line 2859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->t:Z

    .line 2860
    return-void

    .line 2855
    :catch_0
    move-exception v0

    .line 2856
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZLorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 1132
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->k:Z

    if-nez v0, :cond_0

    .line 1232
    :goto_0
    return-void

    .line 1135
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    const-string v0, "event_v3"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1137
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aJ:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1138
    invoke-static {p2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aJ:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    const-string v0, "AppLog"

    const-string v1, "hit black event v3"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1156
    :catch_0
    move-exception v0

    .line 1159
    :cond_1
    new-instance v1, Lcom/ss/android/common/applog/p;

    invoke-direct {v1}, Lcom/ss/android/common/applog/p;-><init>()V

    .line 1160
    iput-object p1, v1, Lcom/ss/android/common/applog/p;->b:Ljava/lang/String;

    .line 1161
    iput-object p2, v1, Lcom/ss/android/common/applog/p;->c:Ljava/lang/String;

    .line 1162
    iput-object p3, v1, Lcom/ss/android/common/applog/p;->d:Ljava/lang/String;

    .line 1163
    iput-wide p4, v1, Lcom/ss/android/common/applog/p;->e:J

    .line 1164
    iput-wide p6, v1, Lcom/ss/android/common/applog/p;->f:J

    .line 1165
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aN:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/common/applog/p;->l:J

    .line 1166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1167
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->j:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    if-eqz v0, :cond_2

    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->W:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xbb8

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/common/utility/NetworkUtils;->d(Landroid/content/Context;)Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->j:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    .line 1170
    :cond_3
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->j:Lcom/bytedance/common/utility/NetworkUtils$NetworkType;

    .line 1171
    if-eqz v0, :cond_5

    .line 1172
    if-nez p9, :cond_4

    .line 1173
    new-instance p9, Lorg/json/JSONObject;

    invoke-direct {p9}, Lorg/json/JSONObject;-><init>()V

    .line 1176
    :cond_4
    :try_start_1
    const-string v2, "nt"

    invoke-virtual {v0}, Lcom/bytedance/common/utility/NetworkUtils$NetworkType;->getValue()I

    move-result v0

    invoke-virtual {p9, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1180
    :cond_5
    :goto_1
    if-eqz p9, :cond_6

    .line 1181
    invoke-virtual {p9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/common/applog/p;->j:Ljava/lang/String;

    .line 1183
    :cond_6
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/common/applog/p;->g:J

    .line 1184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/ss/android/common/applog/p;->h:J

    .line 1185
    iput-boolean p8, v1, Lcom/ss/android/common/applog/p;->k:Z

    .line 1187
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1189
    const-string v2, "onEvent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    .line 1190
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_7

    if-eqz p9, :cond_8

    .line 1192
    :cond_7
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1194
    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, p6, v2

    if-nez v2, :cond_9

    if-eqz p9, :cond_a

    .line 1195
    :cond_9
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1197
    :cond_a
    if-eqz p9, :cond_b

    .line 1198
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1200
    :cond_b
    const-string v2, "AppLog"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    :cond_c
    :try_start_2
    invoke-static {}, Lcom/ss/android/common/util/EventsSender;->inst()Lcom/ss/android/common/util/EventsSender;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/util/EventsSender;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1204
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1205
    if-eqz p9, :cond_f

    .line 1207
    invoke-virtual {p9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 1208
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1210
    invoke-virtual {p9, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1226
    :catch_1
    move-exception v0

    .line 1229
    :cond_d
    :goto_3
    new-instance v0, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v2, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->EVENT:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v0, v2}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 1230
    iput-object v1, v0, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 1231
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    goto/16 :goto_0

    .line 1144
    :cond_e
    :try_start_3
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aI:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1146
    invoke-static {p3}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    :goto_4
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->aI:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    const-string v0, "AppLog"

    const-string v1, "hit black event v1"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1213
    :cond_f
    :try_start_4
    const-string v0, "category"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1214
    const-string v0, "tag"

    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1215
    invoke-static {p3}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1216
    const-string v0, "label"

    invoke-virtual {v2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1218
    :cond_10
    const-wide/16 v4, 0x0

    cmp-long v0, p4, v4

    if-eqz v0, :cond_11

    .line 1219
    const-string v0, "value"

    invoke-virtual {v2, v0, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1221
    :cond_11
    const-wide/16 v4, 0x0

    cmp-long v0, p6, v4

    if-eqz v0, :cond_12

    .line 1222
    const-string v0, "ext_value"

    invoke-virtual {v2, v0, p6, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1224
    :cond_12
    invoke-static {}, Lcom/ss/android/common/util/EventsSender;->inst()Lcom/ss/android/common/util/EventsSender;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ss/android/common/util/EventsSender;->a(Lorg/json/JSONObject;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 1177
    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_13
    move-object v0, p2

    goto :goto_4
.end method

.method a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .line 1312
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v0, v0, Lcom/ss/android/common/applog/z;->a:J

    .line 1313
    :goto_0
    iget-boolean v4, p0, Lcom/ss/android/common/applog/AppLog;->k:Z

    if-eqz v4, :cond_0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    .line 1314
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v2}, Lcom/ss/android/common/applog/i;->getInstance(Landroid/content/Context;)Lcom/ss/android/common/applog/i;

    move-result-object v2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/ss/android/common/applog/i;->a(JLjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1318
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v0, v2

    .line 1312
    goto :goto_0

    .line 1316
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1633
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1652
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1636
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1637
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1641
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    const-string v1, "total_currency_amount"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/common/applog/AppLog;->aM:J

    .line 1642
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "custom"

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1644
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v2, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1645
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v1, :cond_4

    .line 1646
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V

    .line 1648
    :cond_4
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->l()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method a(Ljava/util/HashSet;Lorg/json/JSONArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 2063
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2073
    :cond_0
    return-void

    .line 2066
    :cond_1
    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 2067
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 2068
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 2069
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 2070
    if-lez v2, :cond_2

    .line 2071
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2068
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method a(Ljava/util/Map;)V
    .locals 3
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
    .line 637
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 638
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 639
    new-instance v1, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v2, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->ADD_CUSTOM_HEADER:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v1, v2}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 640
    iput-object v0, v1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 641
    invoke-virtual {p0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1560
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1612
    :cond_0
    :goto_0
    return-void

    .line 1562
    :cond_1
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1563
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v2, "header_custom"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1566
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1567
    const-string v0, "versions"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1568
    const-string v3, "configs"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1569
    const-string v4, "delay_versions"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1570
    const-string v5, "delay_configs"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1571
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1572
    const-string v5, "ab_version"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1576
    :goto_1
    invoke-static {v4}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1577
    const-string v4, "ab_delay_version"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1581
    :goto_2
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-gtz v4, :cond_7

    .line 1582
    :cond_2
    const-string v3, "ab_configure"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1590
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-gtz v3, :cond_8

    .line 1591
    :cond_3
    const-string v1, "ab_delay_configure"

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1595
    :goto_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1596
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, ""

    :cond_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->F:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, ""

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1598
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "ab_version"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1599
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 1601
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v2, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1602
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1603
    :catch_0
    move-exception v0

    .line 1604
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1608
    :catch_1
    move-exception v0

    .line 1609
    iput-boolean v7, p0, Lcom/ss/android/common/applog/AppLog;->I:Z

    .line 1610
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 1574
    :cond_5
    :try_start_3
    const-string v5, "ab_version"

    invoke-interface {v2, v5, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_1

    .line 1579
    :cond_6
    const-string v5, "ab_delay_version"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_2

    .line 1584
    :cond_7
    const-string v4, "ab_configure"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1585
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->H:Lorg/json/JSONObject;

    invoke-virtual {p0, v3, v4}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 1586
    sget-object v3, Lcom/ss/android/common/applog/AppLog;->J:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 1587
    :try_start_4
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->ae:Lorg/json/JSONObject;

    const-string v5, "ab_config"

    iget-object v6, p0, Lcom/ss/android/common/applog/AppLog;->H:Lorg/json/JSONObject;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1588
    monitor-exit v3

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 1593
    :cond_8
    const-string v3, "ab_delay_configure"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 1597
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->F:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_5
.end method

.method a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 2195
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2206
    :cond_0
    return-void

    .line 2197
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 2198
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2199
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2201
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2202
    :catch_0
    move-exception v0

    .line 2203
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;ZZ)V
    .locals 12

    .prologue
    .line 1906
    if-nez p1, :cond_1

    .line 2034
    :cond_0
    :goto_0
    return-void

    .line 1908
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->ax:J

    .line 1909
    sget v0, Lcom/ss/android/common/applog/AppLog;->V:I

    iput v0, p0, Lcom/ss/android/common/applog/AppLog;->aA:I

    .line 1911
    :try_start_0
    const-string v0, "server_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1912
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1913
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1914
    const-string v3, "server_time"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .line 1916
    const-string v3, "local_time"

    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1917
    iput-object v2, p0, Lcom/ss/android/common/applog/AppLog;->at:Lorg/json/JSONObject;

    .line 1918
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v0, :cond_2

    .line 1919
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->at:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/ss/android/common/applog/v;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1924
    :cond_2
    :goto_1
    const-string v0, "config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1925
    if-nez v0, :cond_3

    .line 1926
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1927
    :cond_3
    const/4 v2, 0x0

    .line 1928
    const/4 v1, 0x0

    .line 1930
    :try_start_1
    const-string v3, "allow_push_list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1931
    if-eqz v3, :cond_4

    .line 1932
    sget-object v4, Lcom/ss/android/common/applog/AppLog;->R:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1933
    :try_start_2
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->ak:Ljava/util/HashSet;

    invoke-virtual {p0, v5, v3}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/util/HashSet;Lorg/json/JSONArray;)V

    .line 1934
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1935
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v1

    .line 1940
    :cond_4
    :goto_2
    const-string v3, "allow_old_image_sample"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 1941
    iget-boolean v4, p0, Lcom/ss/android/common/applog/AppLog;->al:Z

    if-eq v3, v4, :cond_5

    .line 1942
    iput-boolean v3, p0, Lcom/ss/android/common/applog/AppLog;->al:Z

    .line 1943
    const/4 v2, 0x1

    .line 1945
    :cond_5
    const-string v3, "session_interval"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 1946
    const/4 v3, 0x0

    .line 1947
    const-wide/16 v6, 0xf

    cmp-long v6, v4, v6

    if-ltz v6, :cond_6

    const-wide/16 v6, 0x12c

    cmp-long v6, v4, v6

    if-gtz v6, :cond_6

    .line 1948
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 1949
    iget-wide v6, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_6

    .line 1950
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    .line 1951
    const/4 v3, 0x1

    .line 1954
    :cond_6
    const-string v4, "batch_event_interval"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 1955
    iget-wide v6, p0, Lcom/ss/android/common/applog/AppLog;->ap:J

    cmp-long v6, v4, v6

    if-eqz v6, :cond_7

    .line 1956
    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ap:J

    .line 1957
    const/4 v3, 0x1

    .line 1958
    iget-object v6, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v6, :cond_7

    .line 1959
    iget-object v6, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v6, v4, v5}, Lcom/ss/android/common/applog/v;->a(J)V

    .line 1962
    :cond_7
    const-string v4, "send_launch_timely"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 1963
    iget v5, p0, Lcom/ss/android/common/applog/AppLog;->aq:I

    if-eq v4, v5, :cond_8

    .line 1964
    iput v4, p0, Lcom/ss/android/common/applog/AppLog;->aq:I

    .line 1965
    const/4 v3, 0x1

    .line 1966
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v4, :cond_8

    .line 1967
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    iget v5, p0, Lcom/ss/android/common/applog/AppLog;->aq:I

    invoke-virtual {v4, v5}, Lcom/ss/android/common/applog/v;->a(I)V

    .line 1970
    :cond_8
    const-string v4, "abtest_fetch_interval"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v8, v4, v6

    .line 1971
    const/4 v4, 0x0

    .line 1973
    :try_start_4
    const-string v5, "fingerprint_codes"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1974
    if-eqz v5, :cond_9

    .line 1975
    invoke-virtual {p0, v5}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONArray;)Ljava/util/HashSet;

    move-result-object v6

    iput-object v6, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    .line 1976
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    :cond_9
    move-object v6, v4

    .line 1980
    :goto_3
    const/4 v4, 0x0

    .line 1981
    if-eqz p2, :cond_a

    .line 1982
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    .line 1983
    const/4 v4, 0x1

    .line 1985
    :cond_a
    const/4 v5, 0x0

    .line 1986
    const-string v7, "http_monitor_port"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1987
    if-lez v0, :cond_13

    iget v7, p0, Lcom/ss/android/common/applog/AppLog;->as:I

    if-eq v0, v7, :cond_13

    .line 1988
    iput v0, p0, Lcom/ss/android/common/applog/AppLog;->as:I

    .line 1989
    const/4 v0, 0x1

    .line 1992
    :goto_4
    iget-object v5, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v7, "applog_stats"

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1994
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1995
    if-eqz v3, :cond_b

    .line 1996
    const-string v3, "session_interval"

    iget-wide v10, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    invoke-interface {v5, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1997
    const-string v3, "batch_event_interval"

    iget-wide v10, p0, Lcom/ss/android/common/applog/AppLog;->ap:J

    invoke-interface {v5, v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1998
    const-string v3, "send_launch_timely"

    iget v7, p0, Lcom/ss/android/common/applog/AppLog;->aq:I

    invoke-interface {v5, v3, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2000
    :cond_b
    if-eqz v6, :cond_c

    .line 2001
    const-string v3, "fingerprint_codes"

    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2003
    :cond_c
    if-eqz v1, :cond_d

    .line 2004
    const-string v3, "allow_push_list"

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2006
    :cond_d
    if-eqz v2, :cond_e

    .line 2007
    const-string v1, "allow_old_image_sample"

    iget-boolean v2, p0, Lcom/ss/android/common/applog/AppLog;->al:Z

    invoke-interface {v5, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2009
    :cond_e
    if-eqz v4, :cond_f

    .line 2010
    const-string v1, "send_fingerprint_time"

    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    invoke-interface {v5, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2012
    :cond_f
    if-eqz v0, :cond_10

    .line 2013
    const-string v0, "http_monitor_port"

    iget v1, p0, Lcom/ss/android/common/applog/AppLog;->as:I

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2015
    :cond_10
    iget-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->A:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_11

    .line 2016
    iput-wide v8, p0, Lcom/ss/android/common/applog/AppLog;->A:J

    .line 2017
    const-string v0, "update_ab_config_interval"

    invoke-interface {v5, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2019
    :cond_11
    const-string v0, "app_log_last_config_time"

    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->ax:J

    invoke-interface {v5, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2020
    const-string v0, "app_log_last_config_version"

    iget v1, p0, Lcom/ss/android/common/applog/AppLog;->aA:I

    invoke-interface {v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2021
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2023
    invoke-direct {p0}, Lcom/ss/android/common/applog/AppLog;->J()V

    .line 2024
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->d()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    .line 2025
    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/common/applog/g;->c()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2026
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/g;->inst(Landroid/content/Context;)Lcom/ss/android/common/applog/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ss/android/common/applog/g;->a(Z)V

    .line 2028
    :cond_12
    if-eqz p3, :cond_0

    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->aj:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->ag:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 2029
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->aj:Z

    .line 2030
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ar:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2031
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ss/android/common/applog/AppLog;->a(ZZZ)V

    goto/16 :goto_0

    .line 1934
    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1937
    :catch_0
    move-exception v3

    goto/16 :goto_2

    .line 1978
    :catch_1
    move-exception v5

    move-object v6, v4

    goto/16 :goto_3

    .line 1922
    :catch_2
    move-exception v0

    goto/16 :goto_1

    :cond_13
    move v0, v5

    goto/16 :goto_4
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1695
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v1, "last_sp_session"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1696
    if-nez p1, :cond_2

    .line 1697
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->u()Ljava/lang/String;

    move-result-object v1

    .line 1698
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->aR:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1699
    const-string v2, "session_last_day"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ss/android/common/applog/AppLog;->aR:Ljava/lang/String;

    .line 1701
    :cond_0
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->aR:Ljava/lang/String;

    invoke-static {v2}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->aR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1702
    :cond_1
    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->aR:Ljava/lang/String;

    .line 1703
    const/4 v1, 0x1

    iput v1, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    .line 1704
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_last_day"

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->aR:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_order"

    iget v2, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1712
    :goto_0
    iput v4, p0, Lcom/ss/android/common/applog/AppLog;->aU:I

    .line 1714
    :cond_2
    return-void

    .line 1706
    :cond_3
    iget v1, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    if-nez v1, :cond_4

    .line 1707
    const-string v1, "session_order"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    .line 1709
    :cond_4
    iget v1, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    .line 1710
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "session_order"

    iget v2, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method a(ZZ)V
    .locals 1

    .prologue
    .line 2572
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/ss/android/common/applog/AppLog;->a(ZZZ)V

    .line 2573
    return-void
.end method

.method a(Ljava/lang/String;ZZ)Z
    .locals 3

    .prologue
    .line 2306
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aQ:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 2307
    invoke-virtual {p0, p1, p2, p3}, Lcom/ss/android/common/applog/AppLog;->b(Ljava/lang/String;ZZ)Z

    move-result v0

    .line 2308
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->aP:Ljava/lang/Object;

    monitor-enter v1

    .line 2309
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/ss/android/common/applog/AppLog;->az:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2311
    :try_start_1
    sget-object v2, Lcom/ss/android/common/applog/AppLog;->aP:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2314
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2315
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->aQ:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 2316
    return v0

    .line 2314
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2312
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aC:Lcom/ss/android/common/AppContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aC:Lcom/ss/android/common/AppContext;

    invoke-interface {v0}, Lcom/ss/android/common/AppContext;->getAid()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(J)V
    .locals 3

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v1, "applog_stats"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1300
    const-string v1, "dns_report_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1301
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1302
    return-void
.end method

.method b(Lcom/ss/android/common/applog/AppLog$a;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1322
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->k:Z

    if-nez v0, :cond_1

    .line 1408
    :cond_0
    :goto_0
    return-void

    .line 1324
    :cond_1
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->b:Z

    if-nez v0, :cond_0

    .line 1326
    sget-object v0, Lcom/ss/android/common/applog/d;->a:[I

    iget-object v1, p1, Lcom/ss/android/common/applog/AppLog$a;->a:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-virtual {v1}, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1328
    :pswitch_0
    iget-wide v0, p1, Lcom/ss/android/common/applog/AppLog$a;->c:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/ss/android/common/applog/AppLog;->a(JZ)V

    .line 1329
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->w()V

    .line 1330
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->q()V

    goto :goto_0

    .line 1333
    :pswitch_1
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ss/android/common/applog/r;

    if-eqz v0, :cond_2

    .line 1334
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/common/applog/r;

    check-cast v0, Lcom/ss/android/common/applog/r;

    iget-wide v2, p1, Lcom/ss/android/common/applog/AppLog$a;->c:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/r;J)V

    .line 1335
    :cond_2
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->q()V

    goto :goto_0

    .line 1338
    :pswitch_2
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lcom/ss/android/common/applog/p;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ss/android/common/applog/p;

    check-cast v0, Lcom/ss/android/common/applog/p;

    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/p;)V

    goto :goto_0

    .line 1342
    :pswitch_3
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1343
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->d:Ljava/lang/String;

    .line 1346
    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    move v1, v0

    .line 1350
    :goto_1
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-wide v4, p1, Lcom/ss/android/common/applog/AppLog$a;->c:J

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    invoke-virtual {p0, v0, v2, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONObject;ZZ)V

    goto :goto_0

    .line 1347
    :catch_0
    move-exception v0

    .line 1348
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    goto :goto_1

    .line 1354
    :pswitch_4
    iget-wide v0, p1, Lcom/ss/android/common/applog/AppLog$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1355
    iget-wide v0, p1, Lcom/ss/android/common/applog/AppLog$a;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/common/applog/AppLog;->b(J)V

    goto :goto_0

    .line 1359
    :pswitch_5
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1360
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1361
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 1362
    iget-object v1, p1, Lcom/ss/android/common/applog/AppLog$a;->d:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1367
    :pswitch_6
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 1372
    :pswitch_7
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1377
    :pswitch_8
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1382
    :pswitch_9
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1383
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 1384
    invoke-direct {p0, v0}, Lcom/ss/android/common/applog/AppLog;->d(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1388
    :pswitch_a
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ss/android/common/applog/AppLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1393
    :pswitch_b
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1394
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1395
    invoke-direct {p0, v0}, Lcom/ss/android/common/applog/AppLog;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1399
    :pswitch_c
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 1400
    iget-object v0, p1, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 1401
    invoke-direct {p0, v0}, Lcom/ss/android/common/applog/AppLog;->c(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 1326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method b(Lcom/ss/android/common/applog/AppLog$c;)V
    .locals 8

    .prologue
    .line 1265
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->k:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1294
    :cond_0
    :goto_0
    return-void

    .line 1267
    :cond_1
    iget-object v1, p1, Lcom/ss/android/common/applog/AppLog$c;->b:Ljava/lang/String;

    .line 1268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1269
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->p:Lcom/ss/android/common/applog/AppLog$c;

    .line 1270
    if-eqz v4, :cond_2

    if-eqz v4, :cond_4

    iget v0, v4, Lcom/ss/android/common/applog/AppLog$c;->a:I

    iget v5, p1, Lcom/ss/android/common/applog/AppLog$c;->a:I

    if-eq v0, v5, :cond_4

    .line 1271
    :cond_2
    const-string v0, "(null)"

    .line 1272
    if-eqz v4, :cond_3

    .line 1273
    iget-object v0, v4, Lcom/ss/android/common/applog/AppLog$c;->b:Ljava/lang/String;

    .line 1274
    :cond_3
    const-string v4, "AppLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unmatched onPause: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    const-wide/16 v4, 0x3f2

    sub-long v4, v2, v4

    iput-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->aa:J

    .line 1277
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->p:Lcom/ss/android/common/applog/AppLog$c;

    .line 1278
    iget-wide v4, p0, Lcom/ss/android/common/applog/AppLog;->aa:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 1279
    if-gtz v0, :cond_5

    .line 1280
    const/4 v0, 0x1

    .line 1281
    :cond_5
    iput-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->aa:J

    .line 1282
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1283
    const-string v4, "AppLog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPause "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    :cond_6
    new-instance v4, Lcom/ss/android/common/applog/r;

    invoke-direct {v4}, Lcom/ss/android/common/applog/r;-><init>()V

    .line 1285
    iput-object v1, v4, Lcom/ss/android/common/applog/r;->a:Ljava/lang/String;

    .line 1286
    iput v0, v4, Lcom/ss/android/common/applog/r;->b:I

    .line 1287
    new-instance v0, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v1, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->PAGE_END:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v0, v1}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 1288
    iput-object v4, v0, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 1289
    iput-wide v2, v0, Lcom/ss/android/common/applog/AppLog$a;->c:J

    .line 1290
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    .line 1291
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->X:Lcom/ss/android/common/applog/a;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->X:Lcom/ss/android/common/applog/a;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/a;->a()V

    goto/16 :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 560
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->G:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    new-instance v0, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v1, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->UPDATE_AB_VERSION_SERVER:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v0, v1}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 563
    iput-object p1, v0, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 564
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 2889
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ss/android/common/applog/AppLog;->L:Z

    .line 2890
    sget-boolean v0, Lcom/ss/android/common/applog/AppLog;->M:Z

    if-eqz v0, :cond_0

    .line 2891
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/applog/AppLog;->c(Landroid/content/Context;)V

    .line 2893
    :cond_0
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2872
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->t:Z

    if-eqz v0, :cond_1

    .line 2873
    iput-boolean v1, p0, Lcom/ss/android/common/applog/AppLog;->t:Z

    .line 2880
    :cond_0
    :goto_0
    return-void

    .line 2876
    :cond_1
    if-eqz p1, :cond_0

    .line 2877
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, p2}, Lcom/ss/android/common/applog/AppLog;->a(ZZZ)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;ZZ)Z
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2321
    :try_start_0
    const-string v0, "AppLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_log_config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2322
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 2323
    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->g()Ljava/lang/String;

    move-result-object v1

    .line 2324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2326
    sget-wide v8, Lcom/ss/android/common/applog/AppLog;->aH:J

    sub-long v8, v4, v8

    const-wide/32 v10, 0x927c0

    cmp-long v0, v8, v10

    if-gez v0, :cond_6

    move v3, v7

    .line 2329
    :goto_0
    sput-wide v4, Lcom/ss/android/common/applog/AppLog;->aH:J

    .line 2331
    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2332
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/ss/android/common/applog/AppLog;->n()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_1

    .line 2334
    :try_start_1
    iget-object v4, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v1, v0, v4, v3}, Lcom/ss/android/common/applog/aa;->sendEncryptLog(Ljava/lang/String;[BLandroid/content/Context;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 2341
    :goto_1
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v0, v6

    .line 2360
    :goto_2
    return v0

    .line 2335
    :catch_0
    move-exception v0

    .line 2336
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2339
    :cond_1
    invoke-static {}, Lcom/bytedance/common/utility/NetworkClient;->getDefault()Lcom/bytedance/common/utility/NetworkClient;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "application/json; charset=utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/common/utility/NetworkClient;->post(Ljava/lang/String;[BZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2343
    :cond_2
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app_log_config response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/common/utility/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2344
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->aE:Lcom/ss/android/common/applog/af;

    if-eqz v1, :cond_3

    .line 2345
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->aE:Lcom/ss/android/common/applog/af;

    invoke-virtual {v1}, Lcom/ss/android/common/applog/af;->b()V

    .line 2347
    :cond_3
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2348
    const-string v0, "ss_app_log"

    const-string v2, "magic_tag"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    .line 2349
    goto :goto_2

    .line 2350
    :cond_4
    new-instance v0, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v2, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->CONFIG_UPDATE:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v0, v2}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 2351
    iput-object v1, v0, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 2352
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ss/android/common/applog/AppLog$a;->d:Ljava/lang/String;

    .line 2353
    if-eqz p2, :cond_5

    .line 2354
    const-wide/16 v2, 0x1

    iput-wide v2, v0, Lcom/ss/android/common/applog/AppLog$a;->c:J

    .line 2355
    :cond_5
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v7

    .line 2356
    goto :goto_2

    .line 2357
    :catch_1
    move-exception v0

    .line 2358
    const-string v1, "AppLog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateConfig exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/common/utility/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    .line 2360
    goto/16 :goto_2

    :cond_6
    move v3, v6

    goto/16 :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aC:Lcom/ss/android/common/AppContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aC:Lcom/ss/android/common/AppContext;

    invoke-interface {v0}, Lcom/ss/android/common/AppContext;->getChannel()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 624
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 626
    :cond_0
    new-instance v0, Lcom/ss/android/common/applog/AppLog$a;

    sget-object v1, Lcom/ss/android/common/applog/AppLog$ActionQueueType;->ADD_UNIQUE_ID:Lcom/ss/android/common/applog/AppLog$ActionQueueType;

    invoke-direct {v0, v1}, Lcom/ss/android/common/applog/AppLog$a;-><init>(Lcom/ss/android/common/applog/AppLog$ActionQueueType;)V

    .line 627
    iput-object p1, v0, Lcom/ss/android/common/applog/AppLog$a;->b:Ljava/lang/Object;

    .line 628
    invoke-virtual {p0, v0}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/AppLog$a;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aC:Lcom/ss/android/common/AppContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->aC:Lcom/ss/android/common/AppContext;

    invoke-interface {v0}, Lcom/ss/android/common/AppContext;->getAppName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1616
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1618
    :cond_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v1, "header_custom"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1619
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_unique_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1620
    sput-object p1, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    .line 1621
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "user_unique_id"

    sget-object v2, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1622
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    if-eqz v0, :cond_0

    .line 1623
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    sget-object v2, Lcom/ss/android/common/applog/AppLog;->a:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 1624
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    invoke-virtual {v1, v0}, Lcom/ss/android/common/applog/v;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1626
    :catch_0
    move-exception v0

    .line 1627
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    return-object v0
.end method

.method l()V
    .locals 4

    .prologue
    .line 648
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v2, "header_custom"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "header_custom_info"

    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 651
    monitor-exit v1

    .line 652
    return-void

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method q()V
    .locals 6

    .prologue
    .line 1105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1106
    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->aw:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1107
    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aw:J

    .line 1108
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1109
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1110
    monitor-exit v1

    .line 1112
    :cond_0
    return-void

    .line 1110
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method r()V
    .locals 2

    .prologue
    .line 1115
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1116
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1117
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->l:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1120
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->am:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1121
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    monitor-enter v1

    .line 1122
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 1123
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1124
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1125
    invoke-static {}, Lcom/ss/android/common/c/b;->h()V

    .line 1127
    invoke-static {}, Lcom/ss/android/common/applog/i;->closeDB()V

    .line 1128
    return-void

    .line 1118
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1124
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method s()V
    .locals 4

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-boolean v0, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-eqz v0, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1657
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1658
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-boolean v2, v2, Lcom/ss/android/common/applog/z;->k:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v2, v2, Lcom/ss/android/common/applog/z;->h:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->ao:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1660
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    .line 1661
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->t()V

    .line 1662
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    .line 1663
    new-instance v1, Lcom/ss/android/common/applog/u;

    invoke-direct {v1}, Lcom/ss/android/common/applog/u;-><init>()V

    .line 1664
    iput-object v0, v1, Lcom/ss/android/common/applog/u;->a:Lcom/ss/android/common/applog/z;

    .line 1665
    invoke-virtual {p0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lcom/ss/android/common/applog/t;)V

    .line 1666
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->Y:Lcom/ss/android/common/applog/ae;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->Y:Lcom/ss/android/common/applog/ae;

    invoke-virtual {v0}, Lcom/ss/android/common/applog/ae;->b()V

    goto :goto_0
.end method

.method t()V
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-nez v0, :cond_0

    .line 1674
    :cond_0
    return-void
.end method

.method u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1686
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->n:Lcom/ss/android/common/applog/v;

    .line 1045
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 1047
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/ss/android/common/applog/f;->getCrashInfo(Landroid/content/Context;Ljava/lang/Thread;Ljava/lang/Throwable;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1048
    const-string v2, "last_create_activity"

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1049
    const-string v2, "last_resume_activity"

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1050
    const-string v2, "last_create_activity_time"

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1051
    const-string v2, "last_resume_activity_time"

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1052
    const-string v2, "app_start_time"

    sget-wide v4, Lcom/ss/android/common/applog/AppLog;->aD:J

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1053
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy_MM_dd_HH_mm_ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1054
    new-instance v3, Ljava/util/Date;

    sget-wide v4, Lcom/ss/android/common/applog/AppLog;->aD:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 1055
    const-string v3, "app_start_time_readable"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1056
    const-string v2, "alive_activities"

    invoke-static {}, Lcom/ss/android/common/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1057
    const-string v2, "running_task_info"

    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v3}, Lcom/ss/android/common/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1058
    invoke-virtual {v0, v1}, Lcom/ss/android/common/applog/v;->c(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1062
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    invoke-static {v0}, Lcom/ss/android/common/util/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1063
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eq v0, p0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->o:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 1076
    :cond_1
    :goto_1
    return-void

    .line 1068
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/bytedance/common/utility/Logger;->debug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1069
    const-string v0, "process"

    const-string v1, "uncaughtException kill myself"

    invoke-static {v0, v1}, Lcom/bytedance/common/utility/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    :cond_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1072
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1059
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method v()V
    .locals 6

    .prologue
    .line 1721
    :try_start_0
    sget-boolean v0, Lcom/ss/android/common/a;->a:Z

    if-nez v0, :cond_1

    .line 1738
    :cond_0
    :goto_0
    return-void

    .line 1723
    :cond_1
    iget-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->aV:Z

    if-eqz v0, :cond_0

    .line 1724
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ss/android/common/applog/AppLog;->aT:J

    sub-long/2addr v0, v2

    .line 1725
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 1726
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1727
    const-string v3, "session_no"

    iget v4, p0, Lcom/ss/android/common/applog/AppLog;->aS:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1728
    const-string v3, "send_times"

    iget v4, p0, Lcom/ss/android/common/applog/AppLog;->aU:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/ss/android/common/applog/AppLog;->aU:I

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1729
    const-string v3, "current_duration"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1730
    const-string v0, "session_start_time"

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-wide v4, v1, Lcom/ss/android/common/applog/z;->c:J

    invoke-static {v4, v5}, Lcom/ss/android/common/applog/AppLog;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aT:J

    .line 1732
    const-string v0, "play_session"

    invoke-static {v0, v2}, Lcom/ss/android/common/lib/AppLogNewUtils;->onEventV3Bundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1735
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method w()V
    .locals 2

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->an:Lcom/ss/android/common/applog/z;

    iget-boolean v0, v0, Lcom/ss/android/common/applog/z;->i:Z

    if-nez v0, :cond_0

    .line 1800
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/common/applog/AppLog;->aT:J

    .line 1801
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/common/applog/AppLog;->aV:Z

    .line 1803
    :cond_0
    return-void
.end method

.method x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2087
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method y()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2092
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v1, "phone"

    .line 2093
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2094
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2098
    :goto_0
    return-object v0

    .line 2095
    :catch_0
    move-exception v0

    .line 2098
    const-string v0, ""

    goto :goto_0
.end method

.method z()V
    .locals 5

    .prologue
    .line 2103
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "custom"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 2104
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2105
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 2106
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2107
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2108
    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2189
    :catch_0
    move-exception v0

    .line 2190
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2192
    :goto_1
    return-void

    .line 2111
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2112
    sget-object v2, Lcom/ss/android/common/applog/AppLog;->aL:Ljava/util/Map;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2113
    :try_start_2
    sget-object v0, Lcom/ss/android/common/applog/AppLog;->aL:Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 2114
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2115
    :try_start_3
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2116
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2117
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2118
    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 2114
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    .line 2122
    :cond_2
    invoke-virtual {p0}, Lcom/ss/android/common/applog/AppLog;->l()V

    .line 2123
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 2124
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "custom"

    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2126
    :cond_3
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ad:Lorg/json/JSONObject;

    const-string v1, "total_currency_amount"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/ss/android/common/applog/AppLog;->aM:J

    .line 2127
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "user_unique_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2128
    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v2, "device_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2129
    iget-object v2, p0, Lcom/ss/android/common/applog/AppLog;->ab:Landroid/content/Context;

    const-string v3, "header_custom"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2130
    sget-object v3, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-static {v3}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2131
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "user_unique_id"

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2132
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_unique_id"

    sget-object v3, Lcom/ss/android/common/applog/AppLog;->aK:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 2140
    :cond_4
    :goto_3
    :try_start_6
    const-string v0, "ab_version"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2141
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2142
    const-string v0, ""

    .line 2144
    :cond_5
    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->E:Ljava/lang/String;

    .line 2145
    const-string v1, "ab_delay_version"

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2146
    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2148
    const-string v1, ""

    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->F:Ljava/lang/String;

    move-object v1, v0

    .line 2153
    :goto_4
    const-string v0, "ab_server_version"

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2154
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2155
    const-string v0, ""

    .line 2157
    :cond_6
    iput-object v0, p0, Lcom/ss/android/common/applog/AppLog;->G:Ljava/lang/String;

    .line 2158
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v3, "ab_version"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2159
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v1, "ab_server_version"

    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2165
    const-string v0, "ab_delay_configure"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2166
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v1

    if-nez v1, :cond_7

    .line 2168
    :try_start_7
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->C:Lorg/json/JSONObject;

    .line 2169
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->C:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->H:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 2174
    :cond_7
    :goto_5
    :try_start_8
    const-string v0, "ab_configure"

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2175
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    move-result v1

    if-nez v1, :cond_8

    .line 2177
    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->D:Lorg/json/JSONObject;

    .line 2178
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->D:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/ss/android/common/applog/AppLog;->H:Lorg/json/JSONObject;

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/common/applog/AppLog;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 2183
    :cond_8
    :goto_6
    :try_start_a
    sget-object v1, Lcom/ss/android/common/applog/AppLog;->J:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 2184
    :try_start_b
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ae:Lorg/json/JSONObject;

    const-string v2, "ab_config"

    iget-object v3, p0, Lcom/ss/android/common/applog/AppLog;->H:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2185
    monitor-exit v1

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    .line 2186
    :catch_1
    move-exception v0

    .line 2187
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 2134
    :cond_9
    invoke-static {v0}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/bytedance/common/utility/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2135
    iget-object v0, p0, Lcom/ss/android/common/applog/AppLog;->ac:Lorg/json/JSONObject;

    const-string v3, "user_unique_id"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_3

    .line 2150
    :cond_a
    :try_start_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2151
    iput-object v1, p0, Lcom/ss/android/common/applog/AppLog;->F:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_4

    .line 2170
    :catch_2
    move-exception v0

    .line 2171
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 2179
    :catch_3
    move-exception v0

    .line 2180
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_6
.end method
