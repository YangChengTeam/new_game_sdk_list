.class public final enum Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

.field public static final enum COOKIE:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

.field public static final enum HTTP:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;


# instance fields
.field private config:Lcom/duoyou/gamesdk/c/http/xutils/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    const-string v1, "HTTP"

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;-><init>()V

    const-string v3, "xUtils_http_cache.db"

    invoke-virtual {v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(I)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$2;

    invoke-direct {v3}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$2;-><init>()V

    invoke-virtual {v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(Lcom/duoyou/gamesdk/c/http/xutils/a$b;)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$1;

    invoke-direct {v3}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(Lcom/duoyou/gamesdk/c/http/xutils/a$c;)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILcom/duoyou/gamesdk/c/http/xutils/a$a;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->HTTP:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    const-string v1, "COOKIE"

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;-><init>()V

    const-string v3, "xUtils_http_cookie.db"

    invoke-virtual {v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(I)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$4;

    invoke-direct {v3}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$4;-><init>()V

    invoke-virtual {v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(Lcom/duoyou/gamesdk/c/http/xutils/a$b;)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    new-instance v3, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$3;

    invoke-direct {v3}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs$3;-><init>()V

    invoke-virtual {v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a$a;->a(Lcom/duoyou/gamesdk/c/http/xutils/a$c;)Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILcom/duoyou/gamesdk/c/http/xutils/a$a;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->COOKIE:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->HTTP:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->COOKIE:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    aput-object v1, v0, v4

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/duoyou/gamesdk/c/http/xutils/a$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/duoyou/gamesdk/c/http/xutils/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->config:Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;
    .locals 1

    const-class v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    return-object v0
.end method

.method public static values()[Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    invoke-virtual {v0}, [Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lcom/duoyou/gamesdk/c/http/xutils/a$a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->config:Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    return-object v0
.end method
