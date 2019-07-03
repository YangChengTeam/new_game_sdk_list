.class Lcom/game91/framework/drawable/SpriteAnimatorBuilder$IntFrameData;
.super Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IntFrameData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game91/framework/drawable/SpriteAnimatorBuilder;


# direct methods
.method public constructor <init>(Lcom/game91/framework/drawable/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .param p2, "fractions"    # [F
    .param p3, "property"    # Landroid/util/Property;
    .param p4, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$IntFrameData;->this$0:Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;-><init>(Lcom/game91/framework/drawable/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method
