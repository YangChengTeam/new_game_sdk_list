.class public Lcom/game91/framework/callback/PayInfo;
.super Ljava/lang/Object;
.source "PayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/game91/framework/callback/PayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buyNum:I

.field private coinNum:Ljava/lang/String;

.field private error:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private mHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notifyUrl:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private productDesc:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private productName:Ljava/lang/String;

.field private roleID:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverID:Ljava/lang/String;

.field private serverName:Ljava/lang/String;

.field private vip:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/game91/framework/callback/PayInfo$1;

    invoke-direct {v0}, Lcom/game91/framework/callback/PayInfo$1;-><init>()V

    sput-object v0, Lcom/game91/framework/callback/PayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/game91/framework/callback/PayInfo;->buyNum:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->coinNum:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->vip:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->notifyUrl:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->extension:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->mHashMap:Ljava/util/Map;

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    .line 19
    const/4 v0, 0x1

    iput v0, p0, Lcom/game91/framework/callback/PayInfo;->buyNum:I

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->coinNum:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    .line 26
    const-string v0, "0"

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->vip:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->notifyUrl:Ljava/lang/String;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->extension:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->mHashMap:Ljava/util/Map;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/game91/framework/callback/PayInfo;->buyNum:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->coinNum:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->vip:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->notifyUrl:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/game91/framework/callback/PayInfo;->extension:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->mHashMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public canPay()Z
    .locals 3

    .prologue
    .line 270
    const/4 v0, 0x1

    .line 271
    .local v0, "result":Z
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "productId = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "productName = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 277
    const/4 v0, 0x0

    .line 279
    :cond_1
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "productDesc = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 281
    const/4 v0, 0x0

    .line 283
    :cond_2
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "price = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "orderId = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 289
    const/4 v0, 0x0

    .line 291
    :cond_4
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serverID = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 293
    const/4 v0, 0x0

    .line 295
    :cond_5
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "serverName = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 297
    const/4 v0, 0x0

    .line 299
    :cond_6
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roleID = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    .line 303
    :cond_7
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roleName = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 305
    const/4 v0, 0x0

    .line 307
    :cond_8
    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "roleLevel = null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    .line 309
    const/4 v0, 0x0

    .line 311
    :cond_9
    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    return v0
.end method

.method public getBuyNum()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/game91/framework/callback/PayInfo;->buyNum:I

    return v0
.end method

.method public getCoinNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->coinNum:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getNotifyUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->notifyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public getVip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->vip:Ljava/lang/String;

    return-object v0
.end method

.method public hashMap()Ljava/util/Map;
    .locals 3

    .prologue
    .line 128
    const-string v0, "productId"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v0, "productName"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v0, "productDescription"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "price"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v0, "cpOid"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "buyNum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/game91/framework/callback/PayInfo;->buyNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "coinNum"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->coinNum:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v0, "serverId"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v0, "serverName"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "roleId"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    const-string v0, "roleName"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v0, "roleLevel"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "vipLevel"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->vip:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v0, "cpNotifyUrl"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->notifyUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "cpExtension"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->extension:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v0, "fee"

    iget-object v1, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v0, "quantity"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->mHashMap:Ljava/util/Map;

    return-object v0
.end method

.method public setBuyNum(I)Lcom/game91/framework/callback/PayInfo;
    .locals 3
    .param p1, "buyNum"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/game91/framework/callback/PayInfo;->buyNum:I

    .line 180
    const-string v0, "buyNum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object p0
.end method

.method public setCoinNum(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "coinNum"    # Ljava/lang/String;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->coinNum:Ljava/lang/String;

    .line 186
    const-string v0, "coinNum"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-object p0
.end method

.method public setExtension(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "extension"    # Ljava/lang/String;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->extension:Ljava/lang/String;

    .line 234
    const-string v0, "cpExtension"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    return-object p0
.end method

.method public setNotifyUrl(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "notifyUrl"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->notifyUrl:Ljava/lang/String;

    .line 228
    const-string v0, "cpNotifyUrl"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    return-object p0
.end method

.method public setOrderId(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "orderId"    # Ljava/lang/String;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    .line 174
    const-string v0, "cpOid"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object p0
.end method

.method public setPrice(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    .line 168
    const-string v0, "price"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-object p0
.end method

.method public setProductDesc(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "productDesc"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    .line 162
    const-string v0, "productDescription"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    return-object p0
.end method

.method public setProductId(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    .line 150
    const-string v0, "productId"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-object p0
.end method

.method public setProductName(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "productName"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    .line 156
    const-string v0, "productName"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-object p0
.end method

.method public setRoleID(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "roleID"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    .line 204
    const-string v0, "roleId"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    return-object p0
.end method

.method public setRoleLevel(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    .line 216
    const-string v0, "roleLevel"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object p0
.end method

.method public setRoleName(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    .line 210
    const-string v0, "roleName"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-object p0
.end method

.method public setServerID(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "serverID"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    .line 192
    const-string v0, "serverId"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-object p0
.end method

.method public setServerName(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "serverName"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    .line 198
    const-string v0, "serverName"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object p0
.end method

.method public setVip(Ljava/lang/String;)Lcom/game91/framework/callback/PayInfo;
    .locals 1
    .param p1, "vip"    # Ljava/lang/String;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/game91/framework/callback/PayInfo;->vip:Ljava/lang/String;

    .line 222
    const-string v0, "vipLevel"

    invoke-direct {p0, v0, p1}, Lcom/game91/framework/callback/PayInfo;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->productDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->price:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->orderId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/game91/framework/callback/PayInfo;->buyNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->coinNum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->serverName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->roleLevel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->vip:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->notifyUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/game91/framework/callback/PayInfo;->extension:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    return-void
.end method
