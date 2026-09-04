.class public Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;
.super Ljava/lang/Object;
.source "CnvCandidatesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/mazec/ui/CnvCandidatesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CandidateCell"
.end annotation


# instance fields
.field bottom:I

.field layouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/Layout;",
            ">;"
        }
    .end annotation
.end field

.field left:I

.field lineHeight:I

.field paddingLeft:I

.field right:I

.field textParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field top:I

.field word:Lcom/metamoji/mazec/converter/MmjiWord;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public containsPoint(FF)Z
    .locals 1

    .line 50
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    int-to-float v0, v0

    cmpg-float v0, v0, p1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->top:I

    int-to-float p1, p1

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public width()I
    .locals 2

    .line 47
    iget v0, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->right:I

    iget v1, p0, Lcom/metamoji/mazec/ui/CnvCandidatesView$CandidateCell;->left:I

    sub-int/2addr v0, v1

    return v0
.end method
