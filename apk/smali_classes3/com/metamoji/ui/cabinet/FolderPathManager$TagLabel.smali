.class Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;
.super Landroid/widget/LinearLayout;
.source "FolderPathManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/FolderPathManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagLabel"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/cabinet/FolderPathManager;Landroid/content/Context;Lcom/metamoji/ui/cabinet/CabinetTreeItem;IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->this$0:Lcom/metamoji/ui/cabinet/FolderPathManager;

    .line 37
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance p4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p4, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p4}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    new-instance p4, Landroid/widget/TextView;

    invoke-direct {p4, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v2, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-virtual {p3}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getTagId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, -0xbbbbbc

    .line 46
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    sget v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    const/4 v2, 0x0

    invoke-virtual {p4, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v0, 0x10

    .line 50
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    invoke-virtual {p4, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 52
    new-instance v3, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;

    invoke-direct {v3, p0, p1, p3}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel$1;-><init>(Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;Lcom/metamoji/ui/cabinet/FolderPathManager;Lcom/metamoji/ui/cabinet/CabinetTreeItem;)V

    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p0, p4}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->addView(Landroid/view/View;)V

    if-nez p5, :cond_0

    .line 62
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    sget p4, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    invoke-direct {p3, v1, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const-string p3, ">"

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, -0x333334

    .line 65
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    sget p3, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    invoke-virtual {p1, p3, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->addView(Landroid/view/View;)V

    .line 73
    :cond_0
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    sget p3, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    invoke-direct {p2, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 77
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->addView(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/cabinet/FolderPathManager$TagLabel;->setGravity(I)V

    return-void
.end method
