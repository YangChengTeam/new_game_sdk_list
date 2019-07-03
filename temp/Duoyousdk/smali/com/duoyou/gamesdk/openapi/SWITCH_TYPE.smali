.class public final enum Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

.field public static final enum CLICK_FLOATING:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

.field public static final enum CLICK_LOGIN:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

.field public static final enum CLICK_NORMAL:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    const-string v1, "CLICK_NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->CLICK_NORMAL:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    new-instance v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    const-string v1, "CLICK_LOGIN"

    invoke-direct {v0, v1, v3}, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->CLICK_LOGIN:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    new-instance v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    const-string v1, "CLICK_FLOATING"

    invoke-direct {v0, v1, v4}, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->CLICK_FLOATING:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    sget-object v1, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->CLICK_NORMAL:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->CLICK_LOGIN:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->CLICK_FLOATING:Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->$VALUES:[Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;
    .locals 1

    const-class v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->$VALUES:[Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    invoke-virtual {v0}, [Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoyou/gamesdk/openapi/SWITCH_TYPE;

    return-object v0
.end method
