.class Lcom/metamoji/nt/NtMazecImsManager$1;
.super Ljava/lang/Object;
.source "NtMazecImsManager.java"

# interfaces
.implements Lcom/metamoji/mazec/purchase/util/NtDownloadManagerForMazecDic$OnFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtMazecImsManager;->dictionaryUpdateCheckOnUserOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lrm:Lcom/metamoji/mazec/LangResouceManager;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/LangResouceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$1;->val$lrm:Lcom/metamoji/mazec/LangResouceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/metamoji/nt/NtMazecImsManager$1;->val$lrm:Lcom/metamoji/mazec/LangResouceManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object p1

    .line 121
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 122
    invoke-static {}, Lcom/metamoji/nt/NtMazecImsManager;->onPurchasedMazec()V

    :cond_0
    return-void
.end method
