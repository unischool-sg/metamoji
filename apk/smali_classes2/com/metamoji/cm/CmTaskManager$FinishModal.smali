.class Lcom/metamoji/cm/CmTaskManager$FinishModal;
.super Lcom/metamoji/cm/CmTaskManager$ModalInfo;
.source "CmTaskManager.java"

# interfaces
.implements Lcom/metamoji/cm/CmTaskManager$IFinish;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/CmTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishModal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/metamoji/cm/CmTaskManager$ModalInfo<",
        "TT;>;",
        "Lcom/metamoji/cm/CmTaskManager$IFinish;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 770
    invoke-direct {p0, v0}, Lcom/metamoji/cm/CmTaskManager$ModalInfo;-><init>(Lcom/metamoji/cm/CmTaskManager-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/cm/CmTaskManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/cm/CmTaskManager$FinishModal;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/metamoji/cm/CmTaskManager$FinishModal;->countDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
