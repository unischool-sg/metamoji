.class public Lcom/metamoji/media/voice/pasteboard/VcPasteboardExtrasHandler;
.super Ljava/lang/Object;
.source "VcPasteboardExtrasHandler.java"

# interfaces
.implements Lcom/metamoji/nt/NtPasteboardExtrasMakeHandler;
.implements Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;


# static fields
.field public static final VC_PASTEBOARD_EXTRAS_INDEX_KEY:Ljava/lang/String; = "indexKey"

.field public static final VC_PASTEBOARD_EXTRAS_MODEL_PROPERTY_VOICE_DATAS:Ljava/lang/String; = "voiceDatas"

.field public static final VC_PASTEBOARD_EXTRAS_MODEL_PROPERTY_VOICE_LINKS:Ljava/lang/String; = "voiceLinks"

.field public static final VC_PASTEBOARD_EXTRAS_MODEL_PROPERTY_VOICE_MODELS:Ljava/lang/String; = "voiceModels"

.field public static final VC_PASTEBOARD_EXTRAS_MODEL_TYPE:Ljava/lang/String; = "voiceLinks"

.field public static final VC_PASTEBOARD_EXTRAS_MODEL_VERSION_1:I = 0x1

.field public static final VC_PASTEBOARD_EXTRAS_OBJECT_KEY:Ljava/lang/String; = "objectKey"

.field public static final VC_PASTEBOARD_EXTRAS_TICKET_KEY:Ljava/lang/String; = "ticketKey"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkVersion(Ljava/util/Map;)Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;"
        }
    .end annotation

    .line 142
    const-string v0, "extra_voice_link"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 144
    sget-object p1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_IGNORE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    return-object p1

    .line 146
    :cond_0
    instance-of v0, p1, Lcom/metamoji/df/model/IModel;

    if-nez v0, :cond_1

    .line 147
    sget-object p1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CANNOT_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    return-object p1

    .line 149
    :cond_1
    check-cast p1, Lcom/metamoji/df/model/IModel;

    .line 151
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getVersion()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 152
    sget-object p1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CANNOT_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    return-object p1

    .line 154
    :cond_2
    sget-object p1, Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;->CAN_PASTE:Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler$NtPasteboardExtrasHandlerVersionCheckResult;

    return-object p1
.end method

.method public handleApplyPasteboardExtra(Ljava/util/Map;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/metamoji/nt/NtDocument;",
            "Lcom/metamoji/nt/NtPageController;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public handleMakePasteboardExtra(Ljava/util/Map;Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;",
            ")V"
        }
    .end annotation

    return-void
.end method
