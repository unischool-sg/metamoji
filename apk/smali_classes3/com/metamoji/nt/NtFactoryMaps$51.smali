.class Lcom/metamoji/nt/NtFactoryMaps$51;
.super Ljava/lang/Object;
.source "NtFactoryMaps.java"

# interfaces
.implements Lcom/metamoji/df/controller/IModelVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtFactoryMaps;->createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 2

    .line 829
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 830
    const-string v1, "$page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtPageController;->visitModelForPageID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 832
    :cond_0
    const-string v1, "$layer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 833
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtLayerController;->visitModelForLayerID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 834
    :cond_1
    const-string v1, "$draw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 835
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 836
    :cond_2
    const-string v1, "$pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 837
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 838
    :cond_3
    const-string v1, "$image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 839
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 840
    :cond_4
    const-string v1, "$web"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 841
    invoke-static {p1, p2}, Lcom/metamoji/un/web/UnWebUnit;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 842
    :cond_5
    const-string v1, "$text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 843
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 844
    :cond_6
    const-string v1, "$bgimage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 845
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 847
    :cond_7
    const-string v1, "$soundunit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 848
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 850
    :cond_8
    const-string v1, "$flipunit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 851
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 853
    :cond_9
    const-string v1, "$surveyunit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 854
    invoke-static {p1, p2}, Lcom/metamoji/nt/NtUnitController;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    return-void

    .line 856
    :cond_a
    const-string v1, "$video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 857
    invoke-static {p1, p2}, Lcom/metamoji/un/video/UnVideoUnit;->visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V

    :cond_b
    return-void
.end method
