.class Lcom/metamoji/media/voice/ui/VcPlayerBar$5;
.super Ljava/lang/Object;
.source "VcPlayerBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 290
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$5;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 292
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcPlayerBar$5;->this$0:Lcom/metamoji/media/voice/ui/VcPlayerBar;

    invoke-static {p1}, Lcom/metamoji/media/voice/ui/VcPlayerBar;->-$$Nest$mhandlePlayBackwardButtonTouchUp(Lcom/metamoji/media/voice/ui/VcPlayerBar;)V

    return-void
.end method
