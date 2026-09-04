.class Lcom/metamoji/media/voice/ui/VcPlayerBar$11;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/voice/ui/VcPlayerBar;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;


# direct methods
.method constructor <init>(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 364
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$11;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 369
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$11;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 367
    invoke-static {p1, v0}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fputm_isDraggingTrackTable(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    return-void

    :cond_0
    const/4 p2, 0x0

    .line 369
    invoke-static {p1, p2}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$fputm_isDraggingTrackTable(Lcom/metamoji/media/voice/ui/VcPlayerBar;Z)V

    return-void
.end method
