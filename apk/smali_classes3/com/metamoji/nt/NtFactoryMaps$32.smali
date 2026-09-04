.class Lcom/metamoji/nt/NtFactoryMaps$32;
.super Ljava/lang/Object;
.source "NtFactoryMaps.java"

# interfaces
.implements Lcom/metamoji/df/controller/SettingsFactory$IInitializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/nt/NtFactoryMaps;->createSystemSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initSettings(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 520
    invoke-static {p1}, Lcom/metamoji/nt/NtEraserSettings;->buildInitModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
