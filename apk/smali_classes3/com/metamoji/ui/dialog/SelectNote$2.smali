.class Lcom/metamoji/ui/dialog/SelectNote$2;
.super Ljava/lang/Object;
.source "SelectNote.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 252
    iput-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote$2;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 256
    iget-object p1, p0, Lcom/metamoji/ui/dialog/SelectNote$2;->this$0:Lcom/metamoji/ui/dialog/SelectNote;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/SelectNote;->btnDriveList_Click()V

    return-void
.end method
