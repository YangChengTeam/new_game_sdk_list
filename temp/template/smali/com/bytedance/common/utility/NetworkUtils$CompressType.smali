.class public final enum Lcom/bytedance/common/utility/NetworkUtils$CompressType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/common/utility/NetworkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CompressType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bytedance/common/utility/NetworkUtils$CompressType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bytedance/common/utility/NetworkUtils$CompressType;

.field public static final enum DEFLATER:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

.field public static final enum GZIP:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

.field public static final enum NONE:Lcom/bytedance/common/utility/NetworkUtils$CompressType;


# instance fields
.field final nativeInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2, v2}, Lcom/bytedance/common/utility/NetworkUtils$CompressType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->NONE:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    .line 40
    new-instance v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v3, v3}, Lcom/bytedance/common/utility/NetworkUtils$CompressType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->GZIP:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    .line 41
    new-instance v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    const-string v1, "DEFLATER"

    invoke-direct {v0, v1, v4, v4}, Lcom/bytedance/common/utility/NetworkUtils$CompressType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->DEFLATER:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->NONE:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->GZIP:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->DEFLATER:Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->$VALUES:[Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput p3, p0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->nativeInt:I

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bytedance/common/utility/NetworkUtils$CompressType;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    return-object v0
.end method

.method public static values()[Lcom/bytedance/common/utility/NetworkUtils$CompressType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/bytedance/common/utility/NetworkUtils$CompressType;->$VALUES:[Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    invoke-virtual {v0}, [Lcom/bytedance/common/utility/NetworkUtils$CompressType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bytedance/common/utility/NetworkUtils$CompressType;

    return-object v0
.end method
