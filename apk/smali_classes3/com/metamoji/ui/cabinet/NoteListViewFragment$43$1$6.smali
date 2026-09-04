.class Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$6;
.super Ljava/lang/Object;
.source "NoteListViewFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

.field final synthetic val$alertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4912
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$6;->this$1:Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$6;->val$alertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 4915
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteListViewFragment$43$1$6;->val$alertDialogBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-static {v0}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showCabinetAlertDialog(Landroidx/appcompat/app/AlertDialog$Builder;)Z

    return-void
.end method
