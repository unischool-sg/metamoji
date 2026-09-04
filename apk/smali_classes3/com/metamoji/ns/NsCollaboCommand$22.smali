.class Lcom/metamoji/ns/NsCollaboCommand$22;
.super Ljava/lang/Object;
.source "NsCollaboCommand.java"

# interfaces
.implements Lcom/metamoji/ns/INsCollaboAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboDistributeByFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$action$0(Lcom/metamoji/nt/NtDocument;Landroidx/fragment/app/FragmentActivity;Landroid/net/Uri;)Lkotlin/Unit;
    .locals 9

    if-eqz p2, :cond_2

    .line 1721
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1723
    sget-object v7, Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;->SHARED:Lcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/nt/NtDocument;->exportAsHayabusadoc(Landroid/net/Uri;Ljava/util/Map;Ljava/lang/StringBuffer;Lcom/metamoji/nt/INtProgressUI;ZZLcom/metamoji/media/voice/controller/VcRecordingsDef$VcConvOption;Ljava/util/Map;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1725
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_FileSave_Succeeded:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1728
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->Msg_ExportError:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    .line 1730
    :goto_0
    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public action(Z)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1709
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1713
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 1717
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocument;->getDocumentTitleForFileName()Ljava/lang/String;

    move-result-object v0

    .line 1718
    const-string v1, ".btshare"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    new-instance v1, Lcom/metamoji/ns/NsCollaboCommand$22$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/ns/NsCollaboCommand$22$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/nt/NtDocument;)V

    const/4 p1, 0x0

    invoke-static {v0, p1, v1}, Lcom/metamoji/ui/task/GetFileTask;->createFile(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
