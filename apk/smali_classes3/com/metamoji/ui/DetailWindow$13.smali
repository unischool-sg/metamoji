.class Lcom/metamoji/ui/DetailWindow$13;
.super Ljava/lang/Object;
.source "DetailWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/DetailWindow;->refresh()V
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

    .line 457
    iput-object p1, p0, Lcom/metamoji/ui/DetailWindow$13;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$13;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$mcancelWriting(Lcom/metamoji/ui/DetailWindow;)V

    .line 462
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$13;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_sheet(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$13;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_canvas(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailView;->hideViewport()V

    .line 468
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$13;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v0}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_canvas(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/ui/DetailView;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/ui/DetailWindow$13;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-static {v1}, Lcom/metamoji/ui/DetailWindow;->-$$Nest$fget_sheet(Lcom/metamoji/ui/DetailWindow;)Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/DetailView;->showViewport(Lcom/metamoji/nt/NtNoteController;)V

    .line 470
    iget-object v0, p0, Lcom/metamoji/ui/DetailWindow$13;->this$0:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v0}, Lcom/metamoji/ui/DetailWindow;->loadSettingsOnPage()V

    return-void
.end method
