.class Lcom/metamoji/nt/NtDocumentSettings$1;
.super Ljava/util/HashMap;
.source "NtDocumentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtDocumentSettings;->getDefaultValues()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 74
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 75
    sget-object p1, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->Auto:Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtDocumentSettings$DocThumbnailType;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "thumbnailType"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtDocumentSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo p1, "thumbnail"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtDocumentSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string p1, "header"

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtDocumentSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string p1, "footer"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtDocumentSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string/jumbo v0, "useSystemTextSettings"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtDocumentSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 81
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "frontCover"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtDocumentSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "noFrontCoverOnPrinting"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/nt/NtDocumentSettings$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
