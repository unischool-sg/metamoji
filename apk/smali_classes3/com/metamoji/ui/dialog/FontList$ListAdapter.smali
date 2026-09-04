.class Lcom/metamoji/ui/dialog/FontList$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/FontList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private fontFamilyNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/text/FontInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/metamoji/ui/dialog/FontList;


# direct methods
.method public constructor <init>(Lcom/metamoji/ui/dialog/FontList;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/FontList;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->context:Landroid/content/Context;

    .line 105
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {}, Lcom/metamoji/un/text/FontUtils;->getFontInfos()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->fontFamilyNames:Ljava/util/List;

    .line 108
    new-instance v0, Lcom/metamoji/ui/dialog/FontList$ListAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/dialog/FontList$ListAdapter$1;-><init>(Lcom/metamoji/ui/dialog/FontList$ListAdapter;Lcom/metamoji/ui/dialog/FontList;)V

    invoke-static {p2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->fontFamilyNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->fontFamilyNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition(Ljava/lang/String;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, -0x1

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->fontFamilyNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 138
    iget-object v1, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->fontFamilyNames:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/FontInfo;

    .line 139
    iget-object v1, v1, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 148
    iget-object p2, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 149
    sget v1, Lcom/metamoji/noteanytime/R$layout;->item_fontlist:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/un/text/FontInfo;

    .line 153
    sget v1, Lcom/metamoji/noteanytime/R$id;->dispFontName:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 154
    iget-object v2, p3, Lcom/metamoji/un/text/FontInfo;->dispName:Ljava/lang/String;

    .line 155
    iget-object v3, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/FontList;

    invoke-static {v3}, Lcom/metamoji/ui/dialog/FontList;->-$$Nest$fgetdefaultFontName(Lcom/metamoji/ui/dialog/FontList;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p3, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/FontList;

    invoke-static {v4}, Lcom/metamoji/ui/dialog/FontList;->-$$Nest$fgetdefaultFontName(Lcom/metamoji/ui/dialog/FontList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 156
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 157
    sget v4, Lcom/metamoji/noteanytime/R$string;->ContextMenu_NormalPrefix:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s(%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 159
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    sget v1, Lcom/metamoji/noteanytime/R$id;->sampleText:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/dialog/FontListSampleView;

    .line 162
    iget-object p3, p3, Lcom/metamoji/un/text/FontInfo;->familyName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/metamoji/un/text/FontUtils;->createTypeface(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 164
    invoke-virtual {v1, p3}, Lcom/metamoji/ui/dialog/FontListSampleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    :cond_2
    sget p3, Lcom/metamoji/noteanytime/R$id;->check_area:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 168
    iget-object v1, p0, Lcom/metamoji/ui/dialog/FontList$ListAdapter;->this$0:Lcom/metamoji/ui/dialog/FontList;

    invoke-static {v1}, Lcom/metamoji/ui/dialog/FontList;->-$$Nest$fgetselIdx(Lcom/metamoji/ui/dialog/FontList;)I

    move-result v1

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p3, v0}, Landroid/view/View;->setActivated(Z)V

    return-object p2
.end method
