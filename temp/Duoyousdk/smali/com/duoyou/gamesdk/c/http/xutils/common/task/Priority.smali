.class public final enum Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field public static final enum BG_LOW:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field public static final enum BG_NORMAL:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field public static final enum BG_TOP:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field public static final enum DEFAULT:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field public static final enum UI_LOW:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field public static final enum UI_NORMAL:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field public static final enum UI_TOP:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const-string v1, "UI_TOP"

    invoke-direct {v0, v1, v3}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->UI_TOP:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const-string v1, "UI_NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->UI_NORMAL:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const-string v1, "UI_LOW"

    invoke-direct {v0, v1, v5}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->UI_LOW:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v6}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->DEFAULT:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const-string v1, "BG_TOP"

    invoke-direct {v0, v1, v7}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->BG_TOP:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const-string v1, "BG_NORMAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->BG_NORMAL:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const-string v1, "BG_LOW"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->BG_LOW:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->UI_TOP:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->UI_NORMAL:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->UI_LOW:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->DEFAULT:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->BG_TOP:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->BG_NORMAL:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->BG_LOW:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

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

.method public static valueOf(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;
    .locals 1

    const-class v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    return-object v0
.end method

.method public static values()[Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    invoke-virtual {v0}, [Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    return-object v0
.end method
