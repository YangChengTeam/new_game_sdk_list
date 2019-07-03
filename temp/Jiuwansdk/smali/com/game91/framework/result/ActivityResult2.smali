.class public Lcom/game91/framework/result/ActivityResult2;
.super Ljava/lang/Object;
.source "ActivityResult2.java"


# instance fields
.field private data:Landroid/content/Intent;

.field private requestCode:I

.field private resultCode:I


# direct methods
.method public constructor <init>(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/game91/framework/result/ActivityResult2;->requestCode:I

    .line 17
    iput p2, p0, Lcom/game91/framework/result/ActivityResult2;->resultCode:I

    .line 18
    iput-object p3, p0, Lcom/game91/framework/result/ActivityResult2;->data:Landroid/content/Intent;

    .line 19
    return-void
.end method


# virtual methods
.method public getData()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/game91/framework/result/ActivityResult2;->data:Landroid/content/Intent;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/game91/framework/result/ActivityResult2;->requestCode:I

    return v0
.end method

.method public getResultCode()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/game91/framework/result/ActivityResult2;->resultCode:I

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/game91/framework/result/ActivityResult2;->resultCode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOk()Z
    .locals 2

    .prologue
    .line 34
    iget v0, p0, Lcom/game91/framework/result/ActivityResult2;->resultCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
