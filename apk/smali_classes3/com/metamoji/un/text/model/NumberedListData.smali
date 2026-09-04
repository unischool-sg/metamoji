.class public Lcom/metamoji/un/text/model/NumberedListData;
.super Ljava/lang/Object;
.source "NumberedListData.java"


# instance fields
.field private _order:I

.field public levelForThisList:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/metamoji/un/text/model/NumberedListData;->_order:I

    return-void
.end method


# virtual methods
.method public getOrder()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/metamoji/un/text/model/NumberedListData;->_order:I

    return v0
.end method

.method public incrementOrder()V
    .locals 1

    .line 8
    iget v0, p0, Lcom/metamoji/un/text/model/NumberedListData;->_order:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/metamoji/un/text/model/NumberedListData;->_order:I

    return-void
.end method
