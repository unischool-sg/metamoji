.class Lcom/metamoji/nt/NtFactoryMaps$50;
.super Ljava/lang/Object;
.source "NtFactoryMaps.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtFactoryMaps;->createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 2

    .line 702
    check-cast p2, Lcom/metamoji/df/controller/AttachmentsModelVisitContext;

    .line 703
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 704
    const-string v1, "$pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-static {p1, p2}, Lcom/metamoji/un/pdf/UnPDFUnit;->visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V

    return-void

    .line 706
    :cond_0
    const-string v1, "$image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    invoke-static {p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V

    return-void

    .line 708
    :cond_1
    const-string v1, "$bgimage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 709
    invoke-static {p1, p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V

    return-void

    .line 710
    :cond_2
    const-string v1, "$web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 711
    invoke-static {p1, p2}, Lcom/metamoji/un/web/UnWebUnit;->visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V

    return-void

    .line 712
    :cond_3
    const-string v1, "$formparts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "$table"

    .line 713
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "$schedule"

    .line 714
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "$ruledline"

    .line 715
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "$squared"

    .line 716
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "$labeledlist"

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 719
    :cond_4
    const-string v1, "$video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 720
    invoke-static {p1, p2}, Lcom/metamoji/un/video/UnVideoUnit;->visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V

    :cond_5
    return-void

    .line 718
    :cond_6
    :goto_0
    invoke-static {p1, p2}, Lcom/metamoji/un/form/UnFormBase;->visitModelForAttachments(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/AttachmentsModelVisitContext;)V

    return-void
.end method
