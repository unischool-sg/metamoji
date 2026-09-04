.class Lcom/metamoji/ui/dialog/SelectNote$1;
.super Ljava/lang/Object;
.source "SelectNote.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/SelectNote;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/SelectNote;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/SelectNote;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 220
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote$1;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/ui/dialog/SelectNote$1;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/SelectNote;->-$$Nest$msetNormalViewNumColumns(Lcom/metamoji/ui/dialog/SelectNote;)V

    return-void
.end method
