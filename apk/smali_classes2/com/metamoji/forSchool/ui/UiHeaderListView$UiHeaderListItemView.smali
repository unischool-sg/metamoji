.class Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;
.super Landroid/widget/LinearLayout;
.source "UiHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/UiHeaderListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UiHeaderListItemView"
.end annotation


# instance fields
.field m_textViewArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;


# direct methods
.method public constructor <init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;Landroid/content/Context;)V
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

    .line 109
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    .line 110
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    .line 114
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/forSchool/ui/UiHeaderListView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 117
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->this$0:Lcom/metamoji/forSchool/ui/UiHeaderListView;

    .line 118
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 119
    invoke-direct {p0, p2}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    const/4 p1, 0x0

    .line 122
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method public getTextViewArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->m_textViewArray:Ljava/util/List;

    return-object v0
.end method

.method public setTextViewArray(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/UiHeaderListView$UiHeaderListItemView;->m_textViewArray:Ljava/util/List;

    return-void
.end method
