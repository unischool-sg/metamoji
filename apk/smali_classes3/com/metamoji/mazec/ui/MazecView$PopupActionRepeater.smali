.class Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;
.super Lcom/metamoji/mazec/ui/MazecView$Repeater;
.source "MazecView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/MazecView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PopupActionRepeater"
.end annotation


# instance fields
.field private execCounter_:I

.field private executor_:Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;

.field final synthetic this$0:Lcom/metamoji/mazec/ui/MazecView;


# direct methods
.method constructor <init>(Lcom/metamoji/mazec/ui/MazecView;Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MazecView$Repeater;-><init>(Lcom/metamoji/mazec/ui/MazecView;)V

    const/4 p1, 0x0

    .line 288
    iput p1, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->execCounter_:I

    .line 291
    iput-object p2, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->executor_:Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;

    return-void
.end method


# virtual methods
.method exec()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v0}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->executor_:Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;

    iget-object v1, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    invoke-static {v1}, Lcom/metamoji/mazec/ui/MazecView;->-$$Nest$fgetmPopupMenu(Lcom/metamoji/mazec/ui/MazecView;)Lcom/metamoji/mazec/ui/PopupMenu;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/metamoji/mazec/ui/MazecView$PopupMenuExecutor;->execute(Lcom/metamoji/mazec/ui/PopupMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget v0, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->execCounter_:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->execCounter_:I

    .line 306
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->this$0:Lcom/metamoji/mazec/ui/MazecView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MazecView;->playSoundEffect(I)V

    :cond_0
    return-void
.end method

.method getExecuteCount()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->execCounter_:I

    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 295
    iput v0, p0, Lcom/metamoji/mazec/ui/MazecView$PopupActionRepeater;->execCounter_:I

    return-void
.end method
