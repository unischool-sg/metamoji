.class public Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;
.super Ljava/lang/Object;
.source "NtPasteboardExtrasMakeHandlerContext.java"


# instance fields
.field _docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

.field _isContainsVoice:Z

.field _isSelfDocument:Z

.field _modelManager:Lcom/metamoji/df/model/IModelManager;

.field _recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ctold/CtDocTagManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 40
    iput-object p2, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    .line 41
    iput-object p3, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isSelfDocument:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 43
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isContainsVoice:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/ctold/CtDocTagManager;Lcom/metamoji/media/voice/controller/VcRecordingsManager;ZZ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 48
    iput-object p2, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    .line 49
    iput-object p3, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    .line 50
    iput-boolean p4, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isSelfDocument:Z

    .line 51
    iput-boolean p5, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isContainsVoice:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtDocument;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 22
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    .line 23
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isSelfDocument:Z

    .line 25
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isContainsVoice:Z

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/nt/NtDocument;Z)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 31
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    .line 32
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isSelfDocument:Z

    .line 34
    iput-boolean p2, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isContainsVoice:Z

    return-void
.end method


# virtual methods
.method public getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_docTagManager:Lcom/metamoji/ctold/CtDocTagManager;

    return-object v0
.end method

.method public getModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    return-object v0
.end method

.method public getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_recordingsManager:Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    return-object v0
.end method

.method public isContainsVoice()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isContainsVoice:Z

    return v0
.end method

.method public isSelfDocument()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;->_isSelfDocument:Z

    return v0
.end method
