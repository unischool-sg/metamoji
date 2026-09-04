.class Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalDocumentViewHolder;
.super Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalViewHolder;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalDocumentViewHolder"
.end annotation


# instance fields
.field public _hasChangeIcon:Landroid/widget/ImageView;

.field public _memberNum:Landroid/widget/TextView;

.field public _pinnedIcon:Landroid/widget/ImageView;

.field public _shareDate:Landroid/widget/TextView;

.field public _shareTitle:Landroid/widget/TextView;

.field public _shareUser:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1068
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
