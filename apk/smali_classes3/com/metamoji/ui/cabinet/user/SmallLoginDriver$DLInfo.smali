.class public final Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;
.super Ljava/lang/Object;
.source "SmallLoginDriver.kt"

# interfaces
.implements Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/SmallLoginDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DLInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmallLoginDriver.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmallLoginDriver.kt\ncom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,579:1\n1#2:580\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0006H\u0002J\u0018\u0010 \u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0010\u0010!\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016J\u0008\u0010\"\u001a\u00020\u001eH\u0016J\u0008\u0010#\u001a\u00020\u001eH\u0016R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\t\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\r@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0011@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001e\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u000c\u001a\u00020\u0015@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u001e\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u000c\u001a\u00020\u0019@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\u00a8\u0006%"
    }
    d2 = {
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;",
        "Lcom/metamoji/nt/dl/INtResourceDownloadStatusOutput;",
        "<init>",
        "()V",
        "event",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
        "getEvent",
        "()Landroidx/lifecycle/MutableLiveData;",
        "status",
        "getStatus",
        "()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
        "value",
        "",
        "message",
        "getMessage",
        "()Ljava/lang/String;",
        "Landroid/view/View$OnClickListener;",
        "cancelListener",
        "getCancelListener",
        "()Landroid/view/View$OnClickListener;",
        "",
        "percent",
        "getPercent",
        "()I",
        "",
        "cancellable",
        "getCancellable",
        "()Z",
        "fire",
        "",
        "ev",
        "beginResourceDownload",
        "progressResourceDownload",
        "setResourceDownloadCancellable",
        "endResourceDownload",
        "Event",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private cancelListener:Landroid/view/View$OnClickListener;

.field private cancellable:Z

.field private final event:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
            ">;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;

.field private percent:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sget-object v1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->event:Landroidx/lifecycle/MutableLiveData;

    .line 461
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->message:Ljava/lang/String;

    return-void
.end method

.method private final fire(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->event:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public beginResourceDownload(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelListener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->message:Ljava/lang/String;

    .line 483
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->cancelListener:Landroid/view/View$OnClickListener;

    const/4 p1, 0x0

    .line 484
    iput-boolean p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->cancellable:Z

    .line 485
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->percent:I

    .line 486
    sget-object p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->BEGIN:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->fire(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V

    return-void
.end method

.method public endResourceDownload()V
    .locals 1

    const/4 v0, 0x0

    .line 512
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->cancelListener:Landroid/view/View$OnClickListener;

    .line 513
    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->END:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->fire(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V

    return-void
.end method

.method public final getCancelListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->cancelListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final getCancellable()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->cancellable:Z

    return v0
.end method

.method public final getEvent()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;",
            ">;"
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->event:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getPercent()I
    .locals 1

    .line 465
    iget v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->percent:I

    return v0
.end method

.method public final getStatus()Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->event:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    if-nez v0, :cond_0

    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->INIT:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    :cond_0
    return-object v0
.end method

.method public progressResourceDownload(I)V
    .locals 0

    .line 494
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->percent:I

    .line 495
    sget-object p1, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->PROGRESS:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->fire(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V

    return-void
.end method

.method public setResourceDownloadCancellable()V
    .locals 1

    const/4 v0, 0x1

    .line 503
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->cancellable:Z

    .line 504
    sget-object v0, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;->ENABLE_CANCEL:Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;

    invoke-direct {p0, v0}, Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo;->fire(Lcom/metamoji/ui/cabinet/user/SmallLoginDriver$DLInfo$Event;)V

    return-void
.end method
