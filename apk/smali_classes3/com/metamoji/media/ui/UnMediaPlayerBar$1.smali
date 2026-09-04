.class Lcom/metamoji/media/ui/UnMediaPlayerBar$1;
.super Ljava/lang/Object;
.source "UnMediaPlayerBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/media/ui/UnMediaPlayerBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;


# direct methods
.method constructor <init>(Lcom/metamoji/media/ui/UnMediaPlayerBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$1;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$1;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/metamoji/media/ui/UnMediaPlayerBar$1;->this$0:Lcom/metamoji/media/ui/UnMediaPlayerBar;

    invoke-static {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar;->-$$Nest$mgetListener(Lcom/metamoji/media/ui/UnMediaPlayerBar;)Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/media/ui/UnMediaPlayerBar$IUnMediaPlayerBarListener;->tappedPlayButton()V

    :cond_0
    return-void
.end method
