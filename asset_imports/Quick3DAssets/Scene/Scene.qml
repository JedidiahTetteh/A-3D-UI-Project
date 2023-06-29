import QtQuick
import QtQuick3D

Node {
    id: node

    // Resources
    Texture {
        id: textures_glass_baseColor_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/glass_baseColor.png"
    }
    Texture {
        id: textures_glass_normal_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/glass_normal.png"
    }
    Texture {
        id: textures_main_mat_baseColor_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/main_mat_baseColor.png"
    }
    Texture {
        id: textures_main_mat_metallicRoughness_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/main_mat_metallicRoughness.png"
    }
    Texture {
        id: textures_main_mat_normal_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/main_mat_normal.png"
    }
    Texture {
        id: textures_main_mat_clearcoat_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/main_mat_clearcoat.png"
    }
    Texture {
        id: textures_main_mat_clearcoat_roughness_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/main_mat_clearcoat_roughness.png"
    }
    Texture {
        id: textures_main_mat_clearcoat_normal_png_texture
        generateMipmaps: true
        mipFilter: Texture.Linear
        source: "maps/main_mat_clearcoat_normal.png"
    }
    PrincipledMaterial {
        id: glass_material
        baseColor: "#40e53d06"
        baseColorMap: textures_glass_baseColor_png_texture
        metalness: 0.781762421131134
        roughness: 0.2690151035785675
        normalMap: textures_glass_normal_png_texture
        normalStrength: 0.2542194426059723
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Blend
        transmissionFactor: 1
    }
    PrincipledMaterial {
        id: main_mat_material
        baseColorMap: textures_main_mat_baseColor_png_texture
        metalnessMap: textures_main_mat_metallicRoughness_png_texture
        roughnessMap: textures_main_mat_metallicRoughness_png_texture
        metalness: 1
        roughness: 1
        normalMap: textures_main_mat_normal_png_texture
        occlusionMap: textures_main_mat_metallicRoughness_png_texture
        cullMode: PrincipledMaterial.NoCulling
        alphaMode: PrincipledMaterial.Opaque
        clearcoatAmount: 0.48839664459228516
        clearcoatRoughnessAmount: 1
        clearcoatMap: textures_main_mat_clearcoat_png_texture
        clearcoatRoughnessMap: textures_main_mat_clearcoat_roughness_png_texture
        clearcoatNormalMap: textures_main_mat_clearcoat_normal_png_texture
    }

    // Nodes:
    Node {
        id: sketchfab_model
        rotation: Qt.quaternion(0.707107, -0.707107, 0, 0)
        Node {
            id: test_robot_baby_obj_cleaner_materialmerger_gles
            Model {
                id: object_2
                source: "meshes/object_0.mesh"
                materials: glass_material
            }
            Model {
                id: object_3
                source: "meshes/object_1.mesh"
                materials: main_mat_material
            }
            Model {
                id: object_4
                source: "meshes/object_2.mesh"
                materials: main_mat_material
            }
            Model {
                id: object_5
                source: "meshes/object_3.mesh"
                materials: main_mat_material
            }
            Model {
                id: object_6
                source: "meshes/object_4.mesh"
                materials: main_mat_material
            }
            Model {
                id: object_7
                source: "meshes/object_5.mesh"
                materials: main_mat_material
            }
        }
    }

    // Animations:
}
