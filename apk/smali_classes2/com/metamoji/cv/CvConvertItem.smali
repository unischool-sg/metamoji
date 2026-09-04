.class public Lcom/metamoji/cv/CvConvertItem;
.super Ljava/lang/Object;
.source "CvConvertItem.java"


# instance fields
.field public context:Lcom/metamoji/cv/CvConvertContext;

.field public convertType:Lcom/metamoji/cv/CvConvertType;

.field public externalRef:Ljava/lang/Object;

.field public itemId:I

.field public model:Lcom/metamoji/df/model/IModel;

.field public priority:I

.field public subconverter:Lcom/metamoji/cv/ICvSubconverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/metamoji/cv/CvConvertItem;->itemId:I

    .line 20
    sget-object v0, Lcom/metamoji/cv/CvConvertType;->Outgoing:Lcom/metamoji/cv/CvConvertType;

    iput-object v0, p0, Lcom/metamoji/cv/CvConvertItem;->convertType:Lcom/metamoji/cv/CvConvertType;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/metamoji/cv/CvConvertItem;->context:Lcom/metamoji/cv/CvConvertContext;

    .line 22
    iput-object v0, p0, Lcom/metamoji/cv/CvConvertItem;->model:Lcom/metamoji/df/model/IModel;

    .line 23
    iput-object v0, p0, Lcom/metamoji/cv/CvConvertItem;->externalRef:Ljava/lang/Object;

    .line 24
    iput-object v0, p0, Lcom/metamoji/cv/CvConvertItem;->subconverter:Lcom/metamoji/cv/ICvSubconverter;

    const/16 v0, 0x2710

    .line 25
    iput v0, p0, Lcom/metamoji/cv/CvConvertItem;->priority:I

    return-void
.end method
