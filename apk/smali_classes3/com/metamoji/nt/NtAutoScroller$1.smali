.class Lcom/metamoji/nt/NtAutoScroller$1;
.super Ljava/lang/Object;
.source "NtAutoScroller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtAutoScroller;->autoScrollingMoved(Landroid/graphics/PointF;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/nt/NtAutoScroller;


# direct methods
.method constructor <init>(Lcom/metamoji/nt/NtAutoScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/metamoji/nt/NtAutoScroller$1;->this$0:Lcom/metamoji/nt/NtAutoScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/metamoji/nt/NtAutoScroller$1;->this$0:Lcom/metamoji/nt/NtAutoScroller;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtAutoScroller;->scrollTimerFired()V

    return-void
.end method
