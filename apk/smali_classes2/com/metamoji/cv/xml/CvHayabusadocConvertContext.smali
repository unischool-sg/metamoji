.class public Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;
.super Lcom/metamoji/cv/xml/CvDirectoryConvertContext;
.source "CvHayabusadocConvertContext.java"


# instance fields
.field public docThumbnailFileName:Ljava/lang/String;

.field public firstPageThumbnailFileName:Ljava/lang/String;

.field public freenoteModel:Lcom/metamoji/df/model/IModel;

.field public isManifestTreated:Z

.field public mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/metamoji/cv/xml/CvDirectoryConvertContext;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/io/File;)V

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->isManifestTreated:Z

    const/4 p1, 0x0

    .line 29
    iput-object p1, p0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->firstPageThumbnailFileName:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->docThumbnailFileName:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->freenoteModel:Lcom/metamoji/df/model/IModel;

    .line 33
    iput-object p1, p0, Lcom/metamoji/cv/xml/CvHayabusadocConvertContext;->mergeInfo:Lcom/metamoji/cv/xml/CvMergeInfo;

    return-void
.end method
