.class Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;
.super Ljava/lang/Object;
.source "SpriteAnimatorBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field fractions:[F

.field property:Landroid/util/Property;

.field final synthetic this$0:Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

.field values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/game91/framework/drawable/SpriteAnimatorBuilder;[FLandroid/util/Property;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/game91/framework/drawable/SpriteAnimatorBuilder;
    .param p2, "fractions"    # [F
    .param p3, "property"    # Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Landroid/util/Property;",
            "[TT;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;, "Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData<TT;>;"
    .local p4, "values":[Ljava/lang/Object;, "[TT;"
    iput-object p1, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->this$0:Lcom/game91/framework/drawable/SpriteAnimatorBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->fractions:[F

    .line 32
    iput-object p3, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->property:Landroid/util/Property;

    .line 33
    iput-object p4, p0, Lcom/game91/framework/drawable/SpriteAnimatorBuilder$FrameData;->values:[Ljava/lang/Object;

    .line 34
    return-void
.end method
