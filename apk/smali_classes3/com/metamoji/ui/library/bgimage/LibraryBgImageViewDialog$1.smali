.class Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;
.super Ljava/lang/Object;
.source "LibraryBgImageViewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->setupFooter(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    new-instance v0, Lcom/metamoji/ui/dialog/PaperBackground;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/PaperBackground;-><init>()V

    invoke-static {p1, v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->-$$Nest$fputm_dlgPaperBackground(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;Lcom/metamoji/ui/dialog/PaperBackground;)V

    .line 190
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-static {p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->-$$Nest$fgetm_dlgPaperBackground(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Lcom/metamoji/ui/dialog/PaperBackground;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-static {v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->-$$Nest$fgetm_isSheet(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PaperBackground;->setIsSheet(Z)V

    .line 191
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-static {p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->-$$Nest$fgetm_dlgPaperBackground(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Lcom/metamoji/ui/dialog/PaperBackground;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-static {v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->-$$Nest$fgetm_param(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Lcom/metamoji/ui/UiPaperSettingsParam;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/PaperBackground;->set_param(Lcom/metamoji/ui/UiPaperSettingsParam;)V

    .line 192
    iget-object p1, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-static {p1}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->-$$Nest$fgetm_dlgPaperBackground(Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;)Lcom/metamoji/ui/dialog/PaperBackground;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog$1;->this$0:Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/bgimage/LibraryBgImageViewDialog;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "PaperBackground"

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/PaperBackground;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
