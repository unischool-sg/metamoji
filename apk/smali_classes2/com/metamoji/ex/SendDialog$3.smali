.class Lcom/metamoji/ex/SendDialog$3;
.super Ljava/lang/Object;
.source "SendDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ex/SendDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ex/SendDialog;


# direct methods
.method constructor <init>(Lcom/metamoji/ex/SendDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 731
    iput-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 733
    sget p1, Lcom/metamoji/noteanytime/R$id;->typePdfBtn:I

    if-ne p2, p1, :cond_0

    .line 734
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Pdf:Lcom/metamoji/ex/SendDialog$Type;

    invoke-static {p1, v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fput_type(Lcom/metamoji/ex/SendDialog;Lcom/metamoji/ex/SendDialog$Type;)V

    .line 735
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$monTypePdfBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V

    goto :goto_0

    .line 736
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeJpegBtn:I

    if-ne p2, p1, :cond_1

    .line 737
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Jpeg:Lcom/metamoji/ex/SendDialog$Type;

    invoke-static {p1, v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fput_type(Lcom/metamoji/ex/SendDialog;Lcom/metamoji/ex/SendDialog$Type;)V

    .line 738
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$monTypeJpegBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V

    goto :goto_0

    .line 739
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeTextBtn:I

    if-ne p2, p1, :cond_2

    .line 740
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->Text:Lcom/metamoji/ex/SendDialog$Type;

    invoke-static {p1, v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fput_type(Lcom/metamoji/ex/SendDialog;Lcom/metamoji/ex/SendDialog$Type;)V

    .line 741
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$monTypeTextBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V

    goto :goto_0

    .line 742
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeTextFileBtn:I

    if-ne p2, p1, :cond_3

    .line 743
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->TextFile:Lcom/metamoji/ex/SendDialog$Type;

    invoke-static {p1, v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fput_type(Lcom/metamoji/ex/SendDialog;Lcom/metamoji/ex/SendDialog$Type;)V

    .line 744
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$monTypeTextFileBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V

    goto :goto_0

    .line 745
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$id;->typeNoteAnytimeBtn:I

    if-ne p2, p1, :cond_4

    .line 746
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    sget-object v0, Lcom/metamoji/ex/SendDialog$Type;->NoteAnytime:Lcom/metamoji/ex/SendDialog$Type;

    invoke-static {p1, v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fput_type(Lcom/metamoji/ex/SendDialog;Lcom/metamoji/ex/SendDialog$Type;)V

    .line 747
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$monTypeNoteAnytimeBtnCheckChanged(Lcom/metamoji/ex/SendDialog;)V

    .line 749
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_pageGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->typeTextBtn:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq v0, p2, :cond_6

    sget v0, Lcom/metamoji/noteanytime/R$id;->typeTextFileBtn:I

    if-ne v0, p2, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    :goto_1
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_mediaGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->typeNoteAnytimeBtn:I

    if-ne v0, p2, :cond_8

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_hasTicket(Lcom/metamoji/ex/SendDialog;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {v0}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_hasSoundUnit(Lcom/metamoji/ex/SendDialog;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 754
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_userDicList(Lcom/metamoji/ex/SendDialog;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 756
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$fget_userGroup(Lcom/metamoji/ex/SendDialog;)Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$id;->typeTextBtn:I

    if-eq v0, p2, :cond_9

    sget v0, Lcom/metamoji/noteanytime/R$id;->typeTextFileBtn:I

    if-ne v0, p2, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 760
    :cond_b
    iget-object p1, p0, Lcom/metamoji/ex/SendDialog$3;->this$0:Lcom/metamoji/ex/SendDialog;

    invoke-static {p1}, Lcom/metamoji/ex/SendDialog;->-$$Nest$mupdateView(Lcom/metamoji/ex/SendDialog;)V

    return-void
.end method
