.class public interface abstract annotation Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;
        a = ""
        c = Lcom/duoyou/gamesdk/c/http/xutils/http/b/a;
        d = {
            ""
        }
        e = {
            ""
        }
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract d()[Ljava/lang/String;
.end method

.method public abstract e()[Ljava/lang/String;
.end method
