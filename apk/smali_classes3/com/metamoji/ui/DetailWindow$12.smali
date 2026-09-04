.class Lcom/metamoji/ui/DetailWindow$12;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Lcom/metamoji/ui/DetailView$OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/DetailWindow;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 291
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$12;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Lcom/metamoji/ui/DetailView;II)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$12;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0, p1, p2, p3}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$monCanvasSizeChanged(Lcom/metamoji/ui/DetailWindow;Lcom/metamoji/ui/DetailView;II)V

    return-void
.end method
