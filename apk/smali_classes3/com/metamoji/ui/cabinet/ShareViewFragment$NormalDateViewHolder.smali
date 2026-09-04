.class Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalDateViewHolder;
.super Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalViewHolder;
.source "ShareViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/ShareViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NormalDateViewHolder"
.end annotation


# instance fields
.field public _dateLabel:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1061
    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/ShareViewFragment$NormalViewHolder;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
