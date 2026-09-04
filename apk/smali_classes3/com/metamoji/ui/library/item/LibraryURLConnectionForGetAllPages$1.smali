.class Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages$1;
.super Ljava/util/HashMap;
.source "LibraryURLConnectionForGetAllPages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;->parseData(Ljava/util/List;)Ljava/util/List;
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


# instance fields
.field final synthetic this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages$1;->this$0:Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo p1, "type"

    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string p1, "g_pageStatus"

    sget-object v0, Lcom/metamoji/lb/LbConstants$StorePageStatus;->INDEX_DATA_COMPLETED:Lcom/metamoji/lb/LbConstants$StorePageStatus;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryURLConnectionForGetAllPages$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
