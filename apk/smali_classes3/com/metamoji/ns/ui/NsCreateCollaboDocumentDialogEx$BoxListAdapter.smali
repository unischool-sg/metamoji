.class public Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NsCreateCollaboDocumentDialogEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BoxListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public deleteMode:Z

.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;Landroid/content/Context;)V
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

    .line 112
    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    const/4 p1, 0x0

    .line 113
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 109
    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->deleteMode:Z

    .line 114
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method createBoxListItem(Landroid/view/View;Ljava/util/Map;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 151
    const-string v0, "driveId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    const-string/jumbo v1, "tagList"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 160
    :cond_0
    const-string v3, ""

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 162
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDocumentManagerByDriveId(Ljava/lang/String;)Lcom/metamoji/sd/SdDriveDocumentManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 164
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Lcom/metamoji/sd/SdDriveDocumentManager;->getAbsPathMatchTags(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 165
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 167
    invoke-static {v5}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->createAbsPath(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 173
    :goto_0
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 175
    invoke-virtual {v0}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getName()Ljava/lang/String;

    move-result-object v3

    .line 178
    :cond_2
    const-string v0, "%s%s"

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 182
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->this$0:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->CreateShareNoteDlg_SharedDrive_Btn_Not_Select:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$id;->deleteBtn:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 188
    iget-boolean v3, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->deleteMode:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 189
    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    .line 191
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 193
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v2, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter$1;-><init>(Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget p2, Lcom/metamoji/noteanytime/R$id;->title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 204
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 206
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 207
    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 137
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-nez p2, :cond_0

    .line 140
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_create_document_box_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 142
    :cond_0
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 143
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    .line 144
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 147
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->createBoxListItem(Landroid/view/View;Ljava/util/Map;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public toArrayList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 119
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 120
    invoke-virtual {p0, v1}, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 131
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx$BoxListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
