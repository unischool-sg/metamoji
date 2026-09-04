.class Lcom/metamoji/ui/dialog/UiDialog$4;
.super Ljava/lang/Object;
.source "UiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/UiDialog;->setContentView(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/UiDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/UiDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 646
    iput-object p1, p0, Lcom/metamoji/ui/dialog/UiDialog$4;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/metamoji/ui/dialog/UiDialog$4;->this$0:Lcom/metamoji/ui/dialog/UiDialog;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/dialog/UiDialog;->onDone(Landroid/view/View;)V

    return-void
.end method
