.class Lcom/metamoji/ui/dialog/DocumentSettings$7;
.super Ljava/lang/Object;
.source "DocumentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 277
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-virtual {p1}, Lcom/metamoji/ui/dialog/DocumentSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    new-instance v0, Lcom/metamoji/ui/dialog/TextUnitStyle;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/DocumentSettings;->-$$Nest$fget_unitStyles(Lcom/metamoji/ui/dialog/DocumentSettings;)Lcom/metamoji/un/text/model/UnitStyles;

    move-result-object v1

    sget v2, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Textunit:I

    invoke-direct {v0, v1, v2}, Lcom/metamoji/ui/dialog/TextUnitStyle;-><init>(Lcom/metamoji/un/text/model/UnitStyles;I)V

    iput-object v0, p1, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleDlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    .line 282
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleDlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    iget-object v0, v0, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleListener:Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/dialog/TextUnitStyle;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 283
    iget-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    iget-object p1, p1, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleDlg:Lcom/metamoji/ui/dialog/TextUnitStyle;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings$7;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings;

    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/DocumentSettings;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/dialog/DocumentSettings;->_TextUnitStyleTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/TextUnitStyle;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
