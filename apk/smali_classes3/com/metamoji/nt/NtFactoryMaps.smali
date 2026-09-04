.class public Lcom/metamoji/nt/NtFactoryMaps;
.super Ljava/lang/Object;
.source "NtFactoryMaps.java"


# static fields
.field private static _controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

.field private static _converter_table:[Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

.field private static _id_traverser:Lcom/metamoji/df/controller/ModelTraverser;

.field private static _id_visitor:Lcom/metamoji/df/controller/IModelVisitor;

.field private static _modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

.field private static _modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

.field private static _settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

.field private static _systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

.field private static _visitor:Lcom/metamoji/df/controller/IModelVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x19

    .line 967
    new-array v0, v0, [Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/docmanifest/CvDocManifestIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/partmanifest/CvPartManifestIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Hayabusadoc:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/freenotesheet/CvFreeNoteIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/attachments/CvAttachmentsOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/attachments/CvAttachmentsIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/MediaFiles/CvMediaFilesIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/voice/CvRecordingsOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/voice/CvRecordingsIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/docsettings/CvDocSettingsIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/draw/CvDrawOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/draw/CvDrawIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/drawelements/CvDrawElementOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/drawelements/CvDrawElementIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/drawelementsold/CvDrawElementOldIncomingSubconverter;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->Part:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/drawelementsold/CvDrawElementOld2IncomingSubconverter;

    invoke-direct {v1, v2, v4, v3}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/text/CvTextOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/text/CvTextIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/image/CvImageOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/image/CvImageIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/bgimage/CvBGImageOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/bgimage/CvBGImageIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/form/CvFormOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/form/CvFormIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/web/CvWebOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/web/CvWebIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/pdf/CvPdfOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/pdf/CvPdfIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/sqldb/CvSqlDbOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/sqldb/CvSqlDbIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/docmanifest/CvCollaboManifestOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/docmanifest/CvCollaboManifestIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/freenotesheet/CvCollaboNoteOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/freenotesheet/CvCollaboNoteIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->AtCollabo:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/collabosettings/CvCollaboSettingsIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/sound/CvSoundOutgoingSubConverter;

    const-class v4, Lcom/metamoji/cv/xml/sound/CvSoundIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/flip/CvFlipOutgoingSubConverter;

    const-class v4, Lcom/metamoji/cv/xml/flip/CvFlipIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/survey/CvSurveyOutgoingSubConverter;

    const-class v4, Lcom/metamoji/cv/xml/survey/CvSurveyIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    sget-object v2, Lcom/metamoji/cv/xml/CvZippedXMLKind;->COMMON:Lcom/metamoji/cv/xml/CvZippedXMLKind;

    const-class v3, Lcom/metamoji/cv/xml/video/CvVideoOutgoingSubconverter;

    const-class v4, Lcom/metamoji/cv/xml/video/CvVideoIncomingSubconverter;

    invoke-direct {v1, v2, v3, v4}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;-><init>(Lcom/metamoji/cv/xml/CvZippedXMLKind;Ljava/lang/Class;Ljava/lang/Class;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_converter_table:[Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAttachmentsModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;
    .locals 3

    .line 682
    new-instance v0, Lcom/metamoji/df/controller/ModelTraverser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/ModelTraverser;-><init>(Lcom/metamoji/df/controller/IModelTraverseRouter;)V

    .line 688
    new-instance v1, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;-><init>()V

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createAttachmentsModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;
    .locals 1

    .line 698
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Lcom/metamoji/nt/NtFactoryMaps$50;

    invoke-direct {v0}, Lcom/metamoji/nt/NtFactoryMaps$50;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    .line 725
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    return-object v0
.end method

.method public static createControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;
    .locals 3

    .line 144
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/metamoji/df/controller/ControllerFactory;

    invoke-direct {v0}, Lcom/metamoji/df/controller/ControllerFactory;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    .line 148
    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$1;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$1;-><init>()V

    const-string v2, "$freenote"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 156
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$2;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$2;-><init>()V

    const-string v2, "$sharenote"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 164
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$3;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$3;-><init>()V

    const-string v2, "$page"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 172
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$4;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$4;-><init>()V

    const-string v2, "$layer"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 180
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$5;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$5;-><init>()V

    const-string v2, "$bgimage"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 188
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$6;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$6;-><init>()V

    const-string v2, "$image"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 194
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$7;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$7;-><init>()V

    const-string v2, "$web"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 202
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$8;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$8;-><init>()V

    const-string v2, "$text"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 210
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$9;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$9;-><init>()V

    const-string v2, "$draw"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 217
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$10;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$10;-><init>()V

    const-string v2, "$bgform"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 223
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$11;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$11;-><init>()V

    const-string v2, "$ruledline"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 229
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$12;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$12;-><init>()V

    const-string v2, "$squared"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 235
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$13;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$13;-><init>()V

    const-string v2, "$table"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 241
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$14;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$14;-><init>()V

    const-string v2, "$labeledlist"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 247
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$15;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$15;-><init>()V

    const-string v2, "$schedule"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 253
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$16;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$16;-><init>()V

    const-string v2, "$formparts"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 267
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$17;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$17;-><init>()V

    const-string v2, "$pdf"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 276
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$18;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$18;-><init>()V

    const-string v2, "$soundunit"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 285
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$19;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$19;-><init>()V

    const-string v2, "$flipunit"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 293
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$20;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$20;-><init>()V

    const-string v2, "$surveyunit"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 301
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$21;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$21;-><init>()V

    const-string v2, "$video"

    invoke-virtual {v0, v2, v1}, Lcom/metamoji/df/controller/ControllerFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V

    .line 308
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    return-object v0
.end method

.method public static createDocumentEditEngineForMimeType(Ljava/lang/String;Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngine;
    .locals 1

    .line 1117
    const-string v0, "application/vnd.metamoji.model.atdoc"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1118
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForFreenote;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1121
    :cond_0
    const-string v0, "application/vnd.metamoji.model.atshare"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForCollabo;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1129
    :cond_1
    const-string v0, "application/vnd.metamoji.model.item.cr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1130
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1133
    :cond_2
    const-string v0, "application/vnd.metamoji.model.item-index.cr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1134
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1137
    :cond_3
    const-string v0, "application/vnd.metamoji.model.item.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1138
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1141
    :cond_4
    const-string v0, "application/vnd.metamoji.model.item-index.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1142
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1145
    :cond_5
    const-string v0, "application/vnd.metamoji.model.sheet.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1146
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1149
    :cond_6
    const-string v0, "application/vnd.metamoji.model.sheet-index.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1150
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1153
    :cond_7
    const-string v0, "application/vnd.metamoji.model.toolbox.gembanote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1154
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1157
    :cond_8
    const-string v0, "application/vnd.metamoji.model.toolbox.eyacho"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1158
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1161
    :cond_9
    const-string v0, "application/vnd.metamoji.model.tag-schema"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1162
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1165
    :cond_a
    const-string v0, "application/vnd.metamoji.model.gemba.doc-search-settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1166
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1169
    :cond_b
    const-string v0, "application/vnd.metamoji.model.gemba.ct-search-settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1170
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1173
    :cond_c
    const-string v0, "application/vnd.metamoji.model.gemba.ct-property-value-history-settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1174
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    :cond_d
    if-eqz p0, :cond_e

    .line 1177
    const-string v0, "application/vnd.metamoji.model.sendcommandlist."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1178
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForLibrary;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0

    .line 1185
    :cond_e
    new-instance v0, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForUnknown;

    invoke-direct {v0, p1, p0}, Lcom/metamoji/nt/doceditor/editorengine/NtDocumentEditEngineForUnknown;-><init>(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDocumentSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;
    .locals 4

    .line 427
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcom/metamoji/df/controller/SettingsFactory;

    invoke-direct {v0}, Lcom/metamoji/df/controller/SettingsFactory;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 431
    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$22;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$22;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$23;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$23;-><init>()V

    const-string v3, "MMJNtDocumentSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 444
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$24;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$24;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$25;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$25;-><init>()V

    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 457
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    return-object v0
.end method

.method public static createIdentifierModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;
    .locals 3

    .line 812
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_id_traverser:Lcom/metamoji/df/controller/ModelTraverser;

    if-nez v0, :cond_0

    .line 813
    new-instance v0, Lcom/metamoji/df/controller/ModelTraverser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/ModelTraverser;-><init>(Lcom/metamoji/df/controller/IModelTraverseRouter;)V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_id_traverser:Lcom/metamoji/df/controller/ModelTraverser;

    .line 814
    new-instance v1, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;-><init>()V

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 816
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_id_traverser:Lcom/metamoji/df/controller/ModelTraverser;

    return-object v0
.end method

.method public static createIdentifierModelVisitor()Lcom/metamoji/df/controller/IModelVisitor;
    .locals 1

    .line 825
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_id_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Lcom/metamoji/nt/NtFactoryMaps$51;

    invoke-direct {v0}, Lcom/metamoji/nt/NtFactoryMaps$51;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_id_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    .line 862
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_id_visitor:Lcom/metamoji/df/controller/IModelVisitor;

    return-object v0
.end method

.method public static createModelCompatibility()Lcom/metamoji/df/controller/ModelCompatibility;
    .locals 7

    .line 341
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibility;

    invoke-direct {v0}, Lcom/metamoji/df/controller/ModelCompatibility;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    .line 345
    new-instance v0, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    .line 348
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string/jumbo v3, "settings"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 351
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "attachments"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 352
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "attachment"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 356
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "mediafiles"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 361
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "recordings"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 362
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "recording"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 365
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "$freenote"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 367
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "$sharenote"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 369
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    new-instance v3, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    const-string v5, "$page"

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 370
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "$layer"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 372
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "$bgimage"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 375
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    new-instance v3, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;

    invoke-direct {v3}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelCompatibilityHandler;-><init>()V

    const-string v5, "$draw"

    invoke-virtual {v2, v3, v5}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 376
    sget-boolean v2, Lcom/metamoji/noteanytime/ModelInfo;->isTextVerticalWritingEnabled:Z

    const-string v3, "$text"

    const/4 v5, 0x2

    if-eqz v2, :cond_0

    .line 377
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    new-instance v6, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;

    invoke-direct {v6, v5, v4}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    invoke-virtual {v2, v6, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_0
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    new-instance v4, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    invoke-virtual {v2, v4, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 380
    :goto_0
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    new-instance v3, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;

    invoke-direct {v3, v1, v5}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    const-string v4, "$image"

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 381
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    new-instance v3, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;

    invoke-direct {v3, v1, v5}, Lcom/metamoji/df/controller/ModelCompatibilityRangeChecker;-><init>(II)V

    const-string v4, "$web"

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 382
    sget-object v2, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "$pdf"

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 384
    new-instance v2, Lcom/metamoji/df/controller/ModelCompatibilityFormRevisionChecker;

    invoke-direct {v2, v1, v1}, Lcom/metamoji/df/controller/ModelCompatibilityFormRevisionChecker;-><init>(II)V

    .line 385
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v3, "$bgform"

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 386
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$labeledlist"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 387
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$ruledline"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 388
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$schedule"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 389
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$squared"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 390
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$table"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 391
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$formparts"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 394
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "MMJNtDocumentSettings"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 396
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    new-instance v2, Lcom/metamoji/ns/NsCollaboSettingsCompatibilityHandler;

    invoke-direct {v2}, Lcom/metamoji/ns/NsCollaboSettingsCompatibilityHandler;-><init>()V

    const-string v3, "MMJNsShareSettings"

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 401
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$soundunit"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 405
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$flipunit"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 408
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$surveyunit"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 411
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isVideoUnitEnabled:Z

    if-eqz v1, :cond_1

    .line 412
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    const-string v2, "$video"

    invoke-virtual {v1, v0, v2}, Lcom/metamoji/df/controller/ModelCompatibility;->installHandler(Lcom/metamoji/df/controller/IModelCompatibilityChecker;Ljava/lang/String;)V

    .line 415
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibility:Lcom/metamoji/df/controller/ModelCompatibility;

    return-object v0
.end method

.method public static createModelCompatibilityTraverser()Lcom/metamoji/df/controller/ModelTraverser;
    .locals 3

    .line 317
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Lcom/metamoji/df/controller/ModelTraverser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/ModelTraverser;-><init>(Lcom/metamoji/df/controller/IModelTraverseRouter;)V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    .line 319
    new-instance v1, Lcom/metamoji/df/controller/AttachmentsTraverseRouter;

    invoke-direct {v1}, Lcom/metamoji/df/controller/AttachmentsTraverseRouter;-><init>()V

    const-string v2, "attachments"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    new-instance v1, Lcom/metamoji/df/controller/SettingsTraverseRouter;

    invoke-direct {v1}, Lcom/metamoji/df/controller/SettingsTraverseRouter;-><init>()V

    const-string/jumbo v2, "settings"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    new-instance v1, Lcom/metamoji/nt/NtNoteModelTraverseRouterForCompatibility;

    invoke-direct {v1}, Lcom/metamoji/nt/NtNoteModelTraverseRouterForCompatibility;-><init>()V

    const-string v2, "$freenote"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 323
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    new-instance v1, Lcom/metamoji/nt/NtNoteModelTraverseRouterForCompatibility;

    invoke-direct {v1}, Lcom/metamoji/nt/NtNoteModelTraverseRouterForCompatibility;-><init>()V

    const-string v2, "$sharenote"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 325
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    new-instance v1, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;-><init>()V

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    new-instance v1, Lcom/metamoji/media/voice/controller/VcRecordingsTraverseRouter;

    invoke-direct {v1}, Lcom/metamoji/media/voice/controller/VcRecordingsTraverseRouter;-><init>()V

    const-string v2, "recordings"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    .line 328
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_modelCompatibilityTraverser:Lcom/metamoji/df/controller/ModelTraverser;

    return-object v0
.end method

.method public static createPasteboardExtrasApplyManager()Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;
    .locals 2

    .line 661
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;-><init>()V

    .line 662
    new-instance v1, Lcom/metamoji/media/voice/pasteboard/VcPasteboardExtrasHandler;

    invoke-direct {v1}, Lcom/metamoji/media/voice/pasteboard/VcPasteboardExtrasHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;->installHandler(Lcom/metamoji/nt/NtPasteboardExtrasApplyHandler;)V

    return-object v0
.end method

.method public static createPasteboardExtrasMakeManager()Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;
    .locals 2

    .line 646
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;

    invoke-direct {v0}, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;-><init>()V

    .line 647
    new-instance v1, Lcom/metamoji/media/voice/pasteboard/VcPasteboardExtrasHandler;

    invoke-direct {v1}, Lcom/metamoji/media/voice/pasteboard/VcPasteboardExtrasHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->installHandler(Lcom/metamoji/nt/NtPasteboardExtrasMakeHandler;)V

    return-object v0
.end method

.method public static createSystemSettingsFactory()Lcom/metamoji/df/controller/SettingsFactory;
    .locals 4

    .line 470
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Lcom/metamoji/df/controller/SettingsFactory;

    invoke-direct {v0}, Lcom/metamoji/df/controller/SettingsFactory;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 474
    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$26;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$26;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$27;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$27;-><init>()V

    const-string v3, "MMJNtPenSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 490
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$28;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$28;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$29;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$29;-><init>()V

    const-string v3, "MMJScMasterPenSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 502
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$30;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$30;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$31;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$31;-><init>()V

    const-string v3, "MMJScShapePenSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 517
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$32;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$32;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$33;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$33;-><init>()V

    const-string v3, "MMJNtEraserSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 531
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$34;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$34;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$35;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$35;-><init>()V

    const-string v3, "MMJNtSystemPenSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 545
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$36;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$36;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$37;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$37;-><init>()V

    const-string v3, "MMJNtSystemInkSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 559
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$38;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$38;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$39;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$39;-><init>()V

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 574
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$40;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$40;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$41;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$41;-><init>()V

    const-string v3, "CabinetUserInfoSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 588
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$42;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$42;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$43;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$43;-><init>()V

    const-string v3, "MMJUnWebBookmarkSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 602
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$44;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$44;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$45;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$45;-><init>()V

    const-string v3, "MMJNtTextSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 616
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$46;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$46;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$47;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$47;-><init>()V

    const-string v3, "MMJMediaFilesServerSettings"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 628
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    new-instance v1, Lcom/metamoji/nt/NtFactoryMaps$48;

    invoke-direct {v1}, Lcom/metamoji/nt/NtFactoryMaps$48;-><init>()V

    new-instance v2, Lcom/metamoji/nt/NtFactoryMaps$49;

    invoke-direct {v2}, Lcom/metamoji/nt/NtFactoryMaps$49;-><init>()V

    const-string v3, "MMJMfLocalCollections"

    invoke-virtual {v0, v3, v1, v2}, Lcom/metamoji/df/controller/SettingsFactory;->install(Ljava/lang/String;Lcom/metamoji/df/controller/SettingsFactory$IInitializer;Lcom/metamoji/df/controller/SettingsFactory$IFactory;)V

    .line 642
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtFactoryMaps;->_systemSettingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    return-object v0
.end method

.method public static createTextReplaceInUnitModelFactory()Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;
    .locals 2

    .line 794
    new-instance v0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;-><init>(Z)V

    .line 800
    new-instance v1, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;

    invoke-direct {v1}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;-><init>()V

    .line 801
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->installTextSearchProvider(Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;)V

    return-object v0
.end method

.method public static createTextSearchInUnitModelFactory()Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;
    .locals 2

    .line 765
    new-instance v0, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;-><init>(Z)V

    .line 771
    new-instance v1, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;

    invoke-direct {v1}, Lcom/metamoji/un/text/NtTextSearchInTextUnitModelProvider;-><init>()V

    .line 772
    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->installTextSearchProvider(Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;)V

    return-object v0
.end method

.method public static createTransportModelTraverser()Lcom/metamoji/df/controller/ModelTraverser;
    .locals 3

    .line 1193
    new-instance v0, Lcom/metamoji/df/controller/ModelTraverser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/ModelTraverser;-><init>(Lcom/metamoji/df/controller/IModelTraverseRouter;)V

    .line 1194
    new-instance v1, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/unit/converter/DrUnModelTraverseRouter;-><init>()V

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/df/controller/ModelTraverser;->installTraverseRouter(Lcom/metamoji/df/controller/IModelTraverseRouter;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createZippedXMLModelConverter(Lcom/metamoji/cv/xml/CvZippedXMLKind;Lcom/metamoji/cv/CvConvertType;)Lcom/metamoji/cv/CvModelConverter;
    .locals 5

    .line 1011
    new-instance v0, Lcom/metamoji/cv/CvModelConverter;

    invoke-direct {v0}, Lcom/metamoji/cv/CvModelConverter;-><init>()V

    .line 1012
    sget-object v1, Lcom/metamoji/nt/NtFactoryMaps;->_converter_table:[Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 1013
    invoke-virtual {v4, v0, p0, p1}, Lcom/metamoji/cv/xml/CvZippedXmlConverterTable;->register(Lcom/metamoji/cv/CvModelConverter;Lcom/metamoji/cv/xml/CvZippedXMLKind;Lcom/metamoji/cv/CvConvertType;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static mimeTypeOfDocument(Lcom/metamoji/df/model/IModelManager;)Ljava/lang/String;
    .locals 2

    .line 1022
    invoke-interface {p0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 1023
    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p0

    .line 1026
    const-string v0, "$freenote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const-string p0, "application/vnd.metamoji.model.atdoc"

    return-object p0

    .line 1030
    :cond_0
    const-string v0, "$sharenote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1031
    const-string p0, "application/vnd.metamoji.model.atshare"

    return-object p0

    .line 1050
    :cond_1
    const-string v0, "$item.cr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    const-string p0, "application/vnd.metamoji.model.item.cr"

    return-object p0

    .line 1054
    :cond_2
    const-string v0, "$itemidx.cr"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1055
    const-string p0, "application/vnd.metamoji.model.item-index.cr"

    return-object p0

    .line 1058
    :cond_3
    const-string v0, "$item.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1059
    const-string p0, "application/vnd.metamoji.model.item.gemba"

    return-object p0

    .line 1062
    :cond_4
    const-string v0, "$itemidx.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1063
    const-string p0, "application/vnd.metamoji.model.item-index.gemba"

    return-object p0

    .line 1066
    :cond_5
    const-string v0, "$sheet.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1067
    const-string p0, "application/vnd.metamoji.model.sheet.gemba"

    return-object p0

    .line 1070
    :cond_6
    const-string v0, "$sheetidx.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1071
    const-string p0, "application/vnd.metamoji.model.sheet-index.gemba"

    return-object p0

    .line 1074
    :cond_7
    const-string v0, "$toolbox.gembanote"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1075
    const-string p0, "application/vnd.metamoji.model.toolbox.gembanote"

    return-object p0

    .line 1078
    :cond_8
    const-string v0, "$toolbox.eyacho"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1079
    const-string p0, "application/vnd.metamoji.model.toolbox.eyacho"

    return-object p0

    .line 1082
    :cond_9
    const-string v0, "$tagschema"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1083
    const-string p0, "application/vnd.metamoji.model.tag-schema"

    return-object p0

    .line 1086
    :cond_a
    const-string v0, "$docsearchsettings.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1087
    const-string p0, "application/vnd.metamoji.model.gemba.doc-search-settings"

    return-object p0

    .line 1090
    :cond_b
    const-string v0, "$ctsearchsettings.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1091
    const-string p0, "application/vnd.metamoji.model.gemba.ct-search-settings"

    return-object p0

    .line 1094
    :cond_c
    const-string v0, "$ctpropvaluehistorysettings.gemba"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1095
    const-string p0, "application/vnd.metamoji.model.gemba.ct-property-value-history-settings"

    return-object p0

    :cond_d
    if-eqz p0, :cond_e

    .line 1098
    const-string v0, "$sendcommandlist."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1099
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/vnd.metamoji.model.sendcommandlist."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1106
    :cond_e
    const-string p0, "application/vnd.metamoji.model.unknown"

    return-object p0
.end method

.method public static registerModelCreators()V
    .locals 1

    .line 960
    new-instance v0, Lcom/metamoji/un/text/model/TextModelCreator;

    invoke-direct {v0}, Lcom/metamoji/un/text/model/TextModelCreator;-><init>()V

    invoke-static {v0}, Lcom/metamoji/df/model/ModelFactory;->registerModelCreator(Lcom/metamoji/df/model/IModelCreator;)V

    .line 961
    new-instance v0, Lcom/metamoji/sqldb/SqlModelCreator;

    invoke-direct {v0}, Lcom/metamoji/sqldb/SqlModelCreator;-><init>()V

    invoke-static {v0}, Lcom/metamoji/df/model/ModelFactory;->registerModelCreator(Lcom/metamoji/df/model/IModelCreator;)V

    return-void
.end method

.method public static registerUndoPerformers(Lcom/metamoji/nt/NtDocument;Z)V
    .locals 0

    .line 873
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 876
    invoke-static {p0}, Lcom/metamoji/df/model/CompoundUndo;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 877
    invoke-static {p0}, Lcom/metamoji/nt/NtNoteController;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 878
    invoke-static {p0}, Lcom/metamoji/nt/NtPageController;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 880
    invoke-static {p0}, Lcom/metamoji/un/text/UnTextUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 881
    invoke-static {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 882
    invoke-static {p0}, Lcom/metamoji/un/image/UnImageUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 883
    invoke-static {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 884
    invoke-static {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 885
    invoke-static {p0}, Lcom/metamoji/un/web/UnWebUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 886
    invoke-static {p0}, Lcom/metamoji/ctold/CtUndoPerformer;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 889
    invoke-static {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 893
    invoke-static {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 896
    invoke-static {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 898
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isVideoUnitEnabled:Z

    if-eqz p1, :cond_1

    .line 899
    invoke-static {p0}, Lcom/metamoji/un/video/UnVideoUnit;->registerPerformer(Lcom/metamoji/df/model/IModelManager;)V

    return-void

    .line 902
    :cond_0
    invoke-static {p0}, Lcom/metamoji/df/model/CompoundUndo;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 903
    invoke-static {p0}, Lcom/metamoji/nt/NtNoteController;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 904
    invoke-static {p0}, Lcom/metamoji/nt/NtPageController;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 906
    invoke-static {p0}, Lcom/metamoji/un/text/UnTextUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 907
    invoke-static {p0}, Lcom/metamoji/un/bgimage/UnBGImageUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 908
    invoke-static {p0}, Lcom/metamoji/un/image/UnImageUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 909
    invoke-static {p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 910
    invoke-static {p0}, Lcom/metamoji/un/pdf/UnPDFUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 911
    invoke-static {p0}, Lcom/metamoji/un/web/UnWebUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 912
    invoke-static {p0}, Lcom/metamoji/ctold/CtUndoPerformer;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 915
    invoke-static {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 919
    invoke-static {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 922
    invoke-static {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    .line 924
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isVideoUnitEnabled:Z

    if-eqz p1, :cond_1

    .line 925
    invoke-static {p0}, Lcom/metamoji/un/video/UnVideoUnit;->unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V

    :cond_1
    return-void
.end method

.method public static registerUnitContainerExtenders()V
    .locals 1

    .line 934
    new-instance v0, Lcom/metamoji/un/text/UnTextUnitContainerExtender;

    invoke-direct {v0}, Lcom/metamoji/un/text/UnTextUnitContainerExtender;-><init>()V

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitController;->registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V

    .line 935
    new-instance v0, Lcom/metamoji/un/image/UnImageUnitContainerExtender;

    invoke-direct {v0}, Lcom/metamoji/un/image/UnImageUnitContainerExtender;-><init>()V

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitController;->registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V

    .line 936
    new-instance v0, Lcom/metamoji/un/web/UnWebUnitContainerExtender;

    invoke-direct {v0}, Lcom/metamoji/un/web/UnWebUnitContainerExtender;-><init>()V

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitController;->registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V

    .line 939
    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;

    invoke-direct {v0}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;-><init>()V

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitController;->registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V

    .line 943
    new-instance v0, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;

    invoke-direct {v0}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;-><init>()V

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitController;->registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V

    .line 946
    new-instance v0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;

    invoke-direct {v0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;-><init>()V

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitController;->registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V

    .line 950
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isVideoUnitEnabled:Z

    if-eqz v0, :cond_0

    .line 951
    new-instance v0, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;

    invoke-direct {v0}, Lcom/metamoji/un/video/UnVideoUnitContainerExtender;-><init>()V

    invoke-static {v0}, Lcom/metamoji/nt/NtUnitController;->registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V

    :cond_0
    return-void
.end method
