.class Lcom/metamoji/nt/NtFactoryMaps$20;
.super Ljava/lang/Object;
.source "NtFactoryMaps.java"

# interfaces
.implements Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtFactoryMaps;->createControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 296
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnit;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnit;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-object v0
.end method
