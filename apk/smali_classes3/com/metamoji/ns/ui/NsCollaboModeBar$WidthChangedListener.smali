.class Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;
.super Lcom/metamoji/ui/UiEventListeners;
.source "NsCollaboModeBar.java"

# interfaces
.implements Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCollaboModeBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WidthChangedListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/metamoji/ui/UiEventListeners<",
        "Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;",
        ">;",
        "Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;


# direct methods
.method private constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1763
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;->this$0:Lcom/metamoji/ns/ui/NsCollaboModeBar;

    invoke-direct {p0}, Lcom/metamoji/ui/UiEventListeners;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;Lcom/metamoji/ns/ui/NsCollaboModeBar-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeBar;)V

    return-void
.end method


# virtual methods
.method public onWidthChanged(I)V
    .locals 5

    .line 1766
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeBar$WidthChangedListener;->beginInvoke()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1770
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1771
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;

    .line 1773
    :try_start_0
    invoke-interface {v3, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ICollaboModeBarWidthChanged;->onWidthChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    .line 1775
    const-string v4, "WidthChangedListener error."

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method
