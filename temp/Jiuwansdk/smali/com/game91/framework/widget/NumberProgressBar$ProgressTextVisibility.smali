.class public final enum Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;
.super Ljava/lang/Enum;
.source "NumberProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game91/framework/widget/NumberProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressTextVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

.field public static final enum INVISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

.field public static final enum VISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 496
    new-instance v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->VISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    new-instance v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->INVISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    .line 495
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    sget-object v1, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->VISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->INVISIBLE:Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    aput-object v1, v0, v3

    sput-object v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->$VALUES:[Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 495
    const-class v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    return-object v0
.end method

.method public static values()[Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;
    .locals 1

    .prologue
    .line 495
    sget-object v0, Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->$VALUES:[Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    invoke-virtual {v0}, [Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/game91/framework/widget/NumberProgressBar$ProgressTextVisibility;

    return-object v0
.end method
