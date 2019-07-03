.class final Lcom/game91/framework/drawable/Sprite$1;
.super Lcom/game91/framework/drawable/IntProperty;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/drawable/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game91/framework/drawable/IntProperty",
        "<",
        "Lcom/game91/framework/drawable/Sprite;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/game91/framework/drawable/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/game91/framework/drawable/Sprite;)Ljava/lang/Integer;
    .locals 1
    .param p1, "object"    # Lcom/game91/framework/drawable/Sprite;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/game91/framework/drawable/Sprite;->getRotateX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    check-cast p1, Lcom/game91/framework/drawable/Sprite;

    invoke-virtual {p0, p1}, Lcom/game91/framework/drawable/Sprite$1;->get(Lcom/game91/framework/drawable/Sprite;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Lcom/game91/framework/drawable/Sprite;I)V
    .locals 0
    .param p1, "object"    # Lcom/game91/framework/drawable/Sprite;
    .param p2, "value"    # I

    .prologue
    .line 319
    invoke-virtual {p1, p2}, Lcom/game91/framework/drawable/Sprite;->setRotateX(I)V

    .line 320
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Lcom/game91/framework/drawable/Sprite;

    invoke-virtual {p0, p1, p2}, Lcom/game91/framework/drawable/Sprite$1;->setValue(Lcom/game91/framework/drawable/Sprite;I)V

    return-void
.end method
