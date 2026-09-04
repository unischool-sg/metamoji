.class Lcom/metamoji/ui/dialog/DocumentSettings2$15;
.super Ljava/util/HashMap;
.source "DocumentSettings2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;->setShareTempateSetting(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
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
.field final synthetic this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field final synthetic val$finalCompanyId:Ljava/lang/String;

.field final synthetic val$presenterArray:Ljava/util/List;

.field final synthetic val$roomType:Ljava/lang/String;

.field final synthetic val$speakerArray:Ljava/util/List;

.field final synthetic val$visitorArray:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/metamoji/ui/dialog/DocumentSettings2;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1090
    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->this$0:Lcom/metamoji/ui/dialog/DocumentSettings2;

    iput-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->val$finalCompanyId:Ljava/lang/String;

    iput-object p3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->val$roomType:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->val$presenterArray:Ljava/util/List;

    iput-object p5, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->val$speakerArray:Ljava/util/List;

    iput-object p6, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->val$visitorArray:Ljava/util/List;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v0, "version"

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    const-string p1, "companyId"

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string/jumbo p1, "roomType"

    invoke-virtual {p0, p1, p3}, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1093
    const-string p1, "presenterArray"

    invoke-virtual {p0, p1, p4}, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1094
    const-string/jumbo p1, "speakerArray"

    invoke-virtual {p0, p1, p5}, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string/jumbo p1, "visitorArray"

    invoke-virtual {p0, p1, p6}, Lcom/metamoji/ui/dialog/DocumentSettings2$15;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
