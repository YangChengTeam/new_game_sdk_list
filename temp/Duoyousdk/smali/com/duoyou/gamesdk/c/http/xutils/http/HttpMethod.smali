.class public final enum Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum CONNECT:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum COPY:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum DELETE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum GET:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum HEAD:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum MOVE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum OPTIONS:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum PATCH:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum POST:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum PUT:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

.field public static final enum TRACE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "GET"

    const-string v2, "GET"

    invoke-direct {v0, v1, v4, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->GET:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "POST"

    const-string v2, "POST"

    invoke-direct {v0, v1, v5, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->POST:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "PUT"

    const-string v2, "PUT"

    invoke-direct {v0, v1, v6, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->PUT:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "PATCH"

    const-string v2, "PATCH"

    invoke-direct {v0, v1, v7, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->PATCH:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "HEAD"

    const-string v2, "HEAD"

    invoke-direct {v0, v1, v8, v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->HEAD:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "MOVE"

    const/4 v2, 0x5

    const-string v3, "MOVE"

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->MOVE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "COPY"

    const/4 v2, 0x6

    const-string v3, "COPY"

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->COPY:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "DELETE"

    const/4 v2, 0x7

    const-string v3, "DELETE"

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->DELETE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "OPTIONS"

    const/16 v2, 0x8

    const-string v3, "OPTIONS"

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->OPTIONS:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "TRACE"

    const/16 v2, 0x9

    const-string v3, "TRACE"

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->TRACE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const-string v1, "CONNECT"

    const/16 v2, 0xa

    const-string v3, "CONNECT"

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->CONNECT:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->GET:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->POST:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->PUT:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->PATCH:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v1, v0, v7

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->HEAD:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->MOVE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->COPY:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->DELETE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->OPTIONS:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->TRACE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->CONNECT:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static permitsCache(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->GET:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->POST:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static permitsRequestBody(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->POST:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->PUT:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->PATCH:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->DELETE:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static permitsRetry(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)Z
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->GET:Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;
    .locals 1

    const-class v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;
    .locals 1

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->$VALUES:[Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    invoke-virtual {v0}, [Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;->value:Ljava/lang/String;

    return-object v0
.end method
