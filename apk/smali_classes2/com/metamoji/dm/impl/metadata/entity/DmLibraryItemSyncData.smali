.class public Lcom/metamoji/dm/impl/metadata/entity/DmLibraryItemSyncData;
.super Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;
.source "DmLibraryItemSyncData.java"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "DmLibraryItemSyncData"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/metamoji/dm/impl/metadata/entity/DmLibraryContentsSyncData;-><init>()V

    return-void
.end method


# virtual methods
.method public getLibraryType()Lcom/metamoji/dm/DmLibraryType;
    .locals 1

    .line 19
    sget-object v0, Lcom/metamoji/dm/DmLibraryType;->LibraryTypeItem:Lcom/metamoji/dm/DmLibraryType;

    return-object v0
.end method
