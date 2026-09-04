.class Lcom/metamoji/nt/NtFactoryMaps$43;
.super Ljava/lang/Object;
.source "NtFactoryMaps.java"

# interfaces
.implements Lcom/metamoji/df/controller/SettingsFactory$IFactory;


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

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSettings(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 596
    new-instance v0, Lcom/metamoji/un/web/BookmarkSettings;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/un/web/BookmarkSettings;-><init>(Lcom/metamoji/df/controller/SettingsManager;Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method
