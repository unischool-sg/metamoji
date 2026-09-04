.class Lcom/metamoji/mazec/LangResouceManager$Cons;
.super Ljava/lang/Object;
.source "LangResouceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/LangResouceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Cons"
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
.field private mCar:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mCdr:Lcom/metamoji/mazec/LangResouceManager$Cons;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/mazec/LangResouceManager$Cons<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/metamoji/mazec/LangResouceManager$Cons;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/metamoji/mazec/LangResouceManager$Cons<",
            "TT;>;)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/metamoji/mazec/LangResouceManager$Cons;->mCar:Ljava/lang/Object;

    .line 95
    iput-object p2, p0, Lcom/metamoji/mazec/LangResouceManager$Cons;->mCdr:Lcom/metamoji/mazec/LangResouceManager$Cons;

    return-void
.end method


# virtual methods
.method public car()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager$Cons;->mCar:Ljava/lang/Object;

    return-object v0
.end method

.method public cdr()Lcom/metamoji/mazec/LangResouceManager$Cons;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/metamoji/mazec/LangResouceManager$Cons<",
            "TT;>;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager$Cons;->mCdr:Lcom/metamoji/mazec/LangResouceManager$Cons;

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Lcom/metamoji/mazec/LangResouceManager$Cons;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/metamoji/mazec/LangResouceManager$Cons<",
            "TT;>;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/metamoji/mazec/LangResouceManager$Cons;->mCar:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/metamoji/mazec/LangResouceManager$Cons;->mCdr:Lcom/metamoji/mazec/LangResouceManager$Cons;

    if-ne v0, p1, :cond_0

    return-object v1

    :cond_0
    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/LangResouceManager$Cons;->remove(Ljava/lang/Object;)Lcom/metamoji/mazec/LangResouceManager$Cons;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/mazec/LangResouceManager$Cons;->mCdr:Lcom/metamoji/mazec/LangResouceManager$Cons;

    :cond_1
    return-object p0
.end method
