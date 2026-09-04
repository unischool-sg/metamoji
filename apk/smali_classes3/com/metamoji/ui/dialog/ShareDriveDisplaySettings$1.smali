.class Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;
.super Landroid/widget/ArrayAdapter;
.source "ShareDriveDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/dvm/fw/bean/DvmDriveBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 138
    new-instance p2, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_context(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 140
    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_PADDING_SIZE:I

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_PADDING_SIZE:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_PADDING_SIZE:I

    invoke-virtual {p2, v0, v1, v2, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 142
    new-instance v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_context(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 143
    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setMaxHeight(I)V

    .line 144
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->cabinet_check_box:I

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    const/16 v1, 0x30

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setGravity(I)V

    .line 146
    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    invoke-virtual {v0, p3, p3, v1, p3}, Landroid/widget/CheckBox;->setPadding(IIII)V

    .line 147
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 149
    new-instance v1, Lcom/metamoji/ui/cabinet/DetailNormalTagView;

    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v2}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_context(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;-><init>(Landroid/content/Context;)V

    .line 150
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    sget v3, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, p3, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 151
    invoke-virtual {v1, v2}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    sget v3, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    invoke-virtual {v1, v2, v3, p3, p3}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->setPadding(IIII)V

    .line 153
    invoke-virtual {v1, p3}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->setClickable(Z)V

    .line 154
    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_context(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 157
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    sget v5, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v3, 0x10

    .line 158
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 159
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;-><init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings-IA;)V

    .line 166
    iput-object v0, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    .line 167
    iput-object v1, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_tagImage:Lcom/metamoji/ui/cabinet/DetailNormalTagView;

    .line 168
    iput-object v2, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_tagTop:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_drives(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    .line 180
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;->this$0:Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;

    invoke-static {v0}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;->-$$Nest$fget_driveToCheck(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 181
    iget-object v1, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v0, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_checkBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$1;-><init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;Lcom/metamoji/dvm/fw/bean/DvmDriveBean;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_tagImage:Lcom/metamoji/ui/cabinet/DetailNormalTagView;

    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->setText(Ljava/lang/String;)V

    .line 191
    iget-object v0, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_tagImage:Lcom/metamoji/ui/cabinet/DetailNormalTagView;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->button_normal:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->setBackgroundResource(I)V

    .line 193
    iget-object v0, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_tagImage:Lcom/metamoji/ui/cabinet/DetailNormalTagView;

    sget v1, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    invoke-virtual {v0, v1, v2, p3, p3}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->setPadding(IIII)V

    .line 194
    iget-object p3, v3, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;->_tagImage:Lcom/metamoji/ui/cabinet/DetailNormalTagView;

    new-instance v0, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;

    invoke-direct {v0, p0, p1, v3}, Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1$2;-><init>(Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$1;Lcom/metamoji/dvm/fw/bean/DvmDriveBean;Lcom/metamoji/ui/dialog/ShareDriveDisplaySettings$ViewHolder;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/cabinet/DetailNormalTagView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
