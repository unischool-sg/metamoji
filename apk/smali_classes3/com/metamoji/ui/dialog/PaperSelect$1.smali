.class Lcom/metamoji/ui/dialog/PaperSelect$1;
.super Landroid/widget/ArrayAdapter;
.source "PaperSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/PaperSelect;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/PaperSelect;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/PaperSelect;Landroid/content/Context;ILjava/util/List;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    iput-object p5, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 92
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->val$context:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 93
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 94
    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_PADDING_SIZE:I

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_PADDING_SIZE:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_PADDING_SIZE:I

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 97
    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMaxHeight(I)V

    .line 98
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_check_box:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    const/16 v1, 0x30

    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 100
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setClickable(Z)V

    .line 101
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 102
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 105
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    sget v4, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v2, 0x10

    .line 106
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 107
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v2, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;-><init>(Lcom/metamoji/ui/dialog/PaperSelect-IA;)V

    .line 111
    iput-object v0, v2, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    .line 112
    iput-object v1, v2, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;->_paperSizeName:Landroid/widget/TextView;

    .line 115
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 118
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;

    .line 122
    :goto_0
    iget-object v0, v2, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_selected(Lcom/metamoji/ui/dialog/PaperSelect;)I

    move-result v1

    if-ne v1, p1, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {v0, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object p3, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {p3}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_paperlist(Lcom/metamoji/ui/dialog/PaperSelect;)Lcom/metamoji/ui/UiPaperSize;

    move-result-object p3

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/PaperSelect;->-$$Nest$fget_paperSizes(Lcom/metamoji/ui/dialog/PaperSelect;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ui/dialog/PaperSelect$1;->this$0:Lcom/metamoji/ui/dialog/PaperSelect;

    iget-boolean v0, v0, Lcom/metamoji/ui/dialog/PaperSelect;->_portrait:Z

    invoke-virtual {p3, p1, v0}, Lcom/metamoji/ui/UiPaperSize;->GetPaperSize(IZ)Lcom/metamoji/ui/UiPaperSize$PaperSize;

    move-result-object p1

    .line 125
    iget-object p3, v2, Lcom/metamoji/ui/dialog/PaperSelect$ViewHolder;->_paperSizeName:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/metamoji/ui/UiPaperSize$PaperSize;->dispname:Ljava/lang/String;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
