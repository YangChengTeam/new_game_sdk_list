.class final Lcom/ss/android/common/applog/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/common/AppContext;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/ss/android/common/applog/ab;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ss/android/common/applog/ab;->b:Ljava/lang/String;

    iput p3, p0, Lcom/ss/android/common/applog/ab;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAid()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/ss/android/common/applog/ab;->c:I

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ss/android/common/applog/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ss/android/common/applog/ab;->b:Ljava/lang/String;

    return-object v0
.end method
